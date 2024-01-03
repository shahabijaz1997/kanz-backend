# frozen_string_literal: true

# Syndicate Member Apis
module V1
  class SyndicateMembersController < ApiController
    before_action :find_invite, only: %i[create destroy]
    before_action :find_syndicate_member, only: %i[destroy]
    before_action :search_params, only: %i[index]

    def index
      @syndicate_members = current_user.syndicate_members.ransack(params[:search]).result
      stats = stats_by_role
      pagy, @syndicate_members = pagy @syndicate_members.latest_first, max_items: 8
      success(
        'success',
        {
          records: SyndicateMemberSerializer.new(@syndicate_members).serializable_hash[:data].map {|d| d[:attributes]},
          stats: stats_by_role,
          pagy: pagy
        }
      )
    end

    def investors
      member_ids = SyndicateMember.by_syndicate(current_user.id).pluck(:member_id)
      pagy, investors = pagy Investor.approved.where.not(id: member_ids).ransack(params[:search]).result
      investors = InvestorListSerializer.new(investors).serializable_hash[:data].map {|d| d[:attributes]}

      success('success',
        {
          records: investors,
          pagy: pagy
        }
      )
    end

    def applications
      invites = current_user.syndicate_group.invites.where(invitee_id: current_user.id).pending
      pagy, invites = pagy invites.ransack(params[:search]).result.latest_first
      invites = SyndicateMemberApplicationSerializer.new(invites).serializable_hash[:data].map {|d| d[:attributes]}

      success('success',
        {
          records: invites,
          pagy: pagy
        }
      )
    end

    def invites
      invites = current_user.syndicate_group.invites.where(user_id: current_user.id).pending
      pagy, invites = pagy invites.ransack(params[:search]).result.latest_first
      invites = SyndicateMemberInviteSerializer.new(invites).serializable_hash[:data].map {|d| d[:attributes]}

      success('success',
        {
          records: invites,
          pagy: pagy
        }
      )
    end

    def accept_membership
      @member = @invite.eventable.syndicate_members.build(member_params)
      Invite.transaction do
        @member.save!
        @invite.update!(status: Invite::statuses[:accepted])
      end
      success(I18n.t("syndicate_member.added"))
    rescue StandardError => error
      errors = @invite.errors.full_messages.to_sentence if @invite.errors.present?
      errors = @member.errors.full_messages.to_sentence if @member.errors.present?
      failure(errors)
    end

    def destroy
      return success(I18n.t("syndicate_member.removed_from_group")) if @syndicate_member.destroy
      
      failure(@syndicate_member.errors.full_messages.to_sentence)
    end

    private

    def find_invite
      # current user is syndicate, gp or invited investor
      @invite = Invite.syndicate_membership.where(eventable: current_user).or(
        Invite.syndicate_membership.where(eventable_type: 'Syndicate', invitee_id: current_user)
      ).find_by(id: params[:invite_id])

      failure(I18n.t("invite.not_found")) if @invite.blank?
    end

    def member_params
      { 
        member_id: current_user.syndicate? ? @invite.user_id : @invite.invitee_id
      }
    end

    def find_syndicate_member
      @syndicate_member = @syndicate.syndicate_members.find_by(id: params[:id])

      failure(I18n.t("syndicate_member.not_found")) if @syndicate_member.blank?
    end

    def stats_by_role
      {
        all: @syndicate_members.count,
        lps: @syndicate_members.where(role_id: Role.syndicate_lp).count,
        gps: @syndicate_members.where(role_id: Role.syndicate_gp).count
      }
    end
  end
end

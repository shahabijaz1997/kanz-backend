# frozen_string_literal: true

# Investor persona
module V1
  class UsersController < ApiController
    skip_before_action :authenticate_user!, only: [:check_session]

    def show
      user_attributes = UserSerializer.new(current_user).serializable_hash[:data][:attributes]
      success(I18n.t('general.get_user'), user_attributes)
    end

    def update
      current_user.update(language_params) ? success : failure
    end

    def check_session
      data = UserSerializer.new(current_user).serializable_hash[:data]&.fetch(:attributes)
      render json: { data: data }, status: current_user.present? ? :ok : :unauthorized
    end

    private

    def language_params
      params.require(:users).permit(:language)
    end
  end
end

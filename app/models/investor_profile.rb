# frozen_string_literal: true

class InvestorProfile < ApplicationRecord
  belongs_to :investor
  belongs_to :country

  validates_presence_of :country_id
  validates_presence_of :residence, if: -> { investor.individual_investor? }
  validates_presence_of :legal_name, if: -> { investor.investment_firm? }

  def self.ransackable_attributes(auth_object = nil)
    %w[residence country_id]
  end

  def self.ransackable_associations(auth_object = nil)
    ['country']
  end
end

# frozen_string_literal: true

class StartupProfile < ApplicationRecord
  belongs_to :startup
  belongs_to :country
  has_one :attachment, as: :parent, dependent: :destroy

  validates :company_name, :legal_name, :total_capital_raised,
            :current_round_capital_target, :ceo_name, :ceo_email,
            :currency, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["company_name", "legal_name", "industry_market"]
  end
end

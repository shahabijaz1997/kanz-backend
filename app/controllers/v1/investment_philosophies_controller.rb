# frozen_string_literal: true

# Investor philosophy
module V1
  class InvestmentPhilosophiesController < ApiController
    before_action :validate_persona

    def show
      resp = Settings::QuestionRetriever.call(params[:step], current_user, 'investment_philosophy')
      return failure(resp.message, resp.code) unless resp.status

      success(resp.message, resp.data)
    end

    def create
      return unprocessable if philosophy_params.blank?

      UsersResponse.transaction do
        philosophy_params[:questions].each do |question|
          user_response = UsersResponse.find_or_create_by(question_id: question[:question_id],
                                                          user_id: current_user.id)
          user_response.update!(question)
        end
      end
      success(I18n.t('investor.update.success.philosophy'), {})
    end

    private

    def validate_persona
      unprocessable unless current_user.investor?
    end

    def philosophy_params
      params.require(:investment_philosophy).permit(
        :step,
        questions: [
          :question_id,
          :answer,
          selected_option_ids: []
        ]
      )
    end
  end
end

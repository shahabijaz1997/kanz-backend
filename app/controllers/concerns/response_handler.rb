# frozen_string_literal: true

module ResponseHandler
  def success(message, data = {})
    render json: {
      status: {
        code: 200,
        message:,
        data:
      }
    }, status: :ok
  end

  def failure(message = I18n.t('errors.exceptions.not_found'), code = 400)
    render json: {
      status: {
        code:,
        message:
      }
    }, status: :bad_request
  end

  def unprocessable(message = I18n.t('errors.exceptions.unprocessable'))
    render json: {
      status: {
        code: 422,
        message:
      }
    }, status: :unprocessable_entity
  end
end

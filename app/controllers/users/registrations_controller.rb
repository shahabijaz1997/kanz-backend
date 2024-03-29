# frozen_string_literal: true

module Users
  # Devise Registration
  class RegistrationsController < Devise::RegistrationsController
    include RackSessionSolution
    include ResponseHandler

    before_action :configure_permitted_parameters
    before_action :update_language
    respond_to :json

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[name type email password, language])
    end

    private

    def respond_with(resource, _opts = {})
      return success(I18n.t('devise.registrations.destroyed')) if request.method == 'DELETE'

      if request.method == 'POST' && resource.persisted?
        data = UserSerializer.new(
          resource
        ).serializable_hash[:data][:attributes].except(:role)
        success(I18n.t('devise.registrations.signed_up'), data)
      else
        unprocessable(resource.errors.full_messages.to_sentence)
      end
    end

    def update_language
      I18n.locale = params[:user][:language] == 'ar' ? :ar : :en
    end
  end
end

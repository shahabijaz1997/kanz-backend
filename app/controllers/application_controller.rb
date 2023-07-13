# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization
  include PunditHelper
  include ActiveStorage::SetCurrent
  include Pagy::Backend

  protect_from_forgery with: :null_session
  before_action :authenticate_admin_user!

  alias user_context pundit_user

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :user_not_authorized

  def authorize_role!
    policy_name = controller_name.camelize.singularize
    authorize policy_name.constantize
  end
end

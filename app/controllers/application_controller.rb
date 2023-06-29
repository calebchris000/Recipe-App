# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

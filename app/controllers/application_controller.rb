# frozen_string_literal: true

class ApplicationController < ActionController::Base
  #layout :layout_by_resource

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :profile_image])
  end

  # private

  # def layout_by_resource
  #   if devise_controller?
  #     'devise'
  #   else
  #     'application'
  #   end
  # end
end

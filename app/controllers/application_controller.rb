class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


 protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name,:last_name, :class_year, :email,:password, :password_confirmation, :university_id,:law_review) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name,:last_name, :class_year, :email, :password, :password_confirmation, :current_password, :university_id,:law_review) }
  end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    allowed_params = [:first_name, :last_name, :email, :city, :member_type,
                      :t_and_cs]
    devise_parameter_sanitizer.for(:sign_up) << allowed_params
  end
end

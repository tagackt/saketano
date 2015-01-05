class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    home_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update)  { |u| u.permit(:name, :sex, :birthday, :birth_prefecture_id, :current_prefecture_id, :email, :password, :password_confirmation, :current_password, :user_image, :user_image_cache) }
  end

end
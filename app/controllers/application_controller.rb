class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :image, :sex, :age, :area, :skill, :introduce, :project, :want_to_do, :want_to_meet, :performance, :join_type, :category_id])
  end
end

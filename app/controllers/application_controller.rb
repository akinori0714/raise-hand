class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :image, :sex, :age, :area, :skill1_id, :skill2_id, :skill3_id, :skill4_id, :skill5_id, :introduce, :project, :want_to_do, :want_to_meet, :performance, :category_id, jointype:[]])
  end
end

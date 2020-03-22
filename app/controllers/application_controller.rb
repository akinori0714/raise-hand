class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
    :name, :email, :image, :sex, :age, :area,
    :skill1_id, :skill2_id, :skill3_id, :skill4_id, :skill5_id,
    :skill1_period, :skill2_period, :skill3_period, :skill4_period, :skill5_period,
    :introduce, :performance, :category_id, 
    want_to_meet:[],
    want_to_do:[],
    jointype:[]])
  end
end

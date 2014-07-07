class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def new
    super
  end

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :role_ids, :password, :password_confirmation,
                                  :first_name, :last_name, :gender, :age, :phone, :country_id,
                                  :height, :weight, :smoker, :hobbies, :dieted, :place_of_diet)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :role_ids, :password, :password_confirmation,
                                  :first_name, :last_name, :gender, :age, :phone, :country_id,
                                  :height, :weight, :smoker, :hobbies, :dieted, :place_of_diet)}
  end

end

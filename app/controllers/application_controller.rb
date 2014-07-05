class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_admin

  def current_admin
    current_user.present? && current_user.has_role?(:admin) ? current_user : nil
  end
end

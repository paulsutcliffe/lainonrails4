class UsersController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!

  def index
    @users = User.all.page(params[:page] || 1).per(20)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path, :notice => "Usuario actualizado."
    else
      Rails.logger.info "==> No actualizado"
      Rails.logger.info @user.errors.map{|e, m| [e, m]}
      redirect_to users_path, :alert => "No se puede actualizar el usuario."
    end
  end

  def destroy
    user = User.find(params[:id])
    if user == current_user
      redirect_to users_path, :notice => "Usuario eliminado."
    else
      user.destroy
      redirect_to users_path, :notice => "No puedes eliminarte."
    end
  end

  def user_params
      params.require(:user).permit(:email, :role_ids, :password, :password_confirmation,
                                  :first_name, :last_name, :gender, :age, :phone, :country_id,
                                  :height, :weight, :smoker, :hobbies, :dieted, :place_of_diet)
  end

end

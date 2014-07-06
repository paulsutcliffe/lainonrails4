class ComputestsController < InheritedResources::Base
  before_action :set_computest, only: [:show, :edit, :update, :destroy]
  
  private

  def set_computest
    @computest = Computest.find(params[:id])
  end

  def computest_params
    params.require(:computest).permit([:first_name, :last_name, :email, :phone, :gender, :height, :weight, :bmi, :state, :ideal_weight, :country_id])
  end

  def permitted_params
    params.permit(:computest => [:first_name, :last_name, :email, :phone, :gender, :height, :weight, :bmi, :state, :ideal_weight, :country_id])
  end

end

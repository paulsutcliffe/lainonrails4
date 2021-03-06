class ComputestsController < InheritedResources::Base
  load_and_authorize_resource
  skip_load_resource :only => [:create]
  before_action :set_computest, only: [:show, :edit, :update, :destroy]

  def index
    @computests = @country.computests.ordered.page(params[:page] || 1).per(20) if @country
    respond_to do |format|
      format.html
      format.xls
    end
  end

  def create
    @computest = Computest.new(computest_params)
    @computest.country_id = @country.try(:id)
    create!(notice: "Computest guardado correctamente.")
  end

  def update
    @computest.country_id = @country.try(:id)
    update!(:notice => "Computest actualizado correctamente.")
  end

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

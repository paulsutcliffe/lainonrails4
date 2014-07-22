class OfficesController < InheritedResources::Base
  load_and_authorize_resource
  before_action :set_office, only: [:show, :edit, :update, :destroy]

  def index
    @offices = @country.offices.ordered.page(params[:page] || 1).per(20) if @country
  end

  def create
    @office = Office.new(office_params)
    @office.country_id = @country.try(:id)
    create!(notice: "Sucursal guardada correctamente.") { offices_path }
  end

  def update
    @office.country_id = @country.try(:id)
    update!(:notice => "Sucursal actualizada correctamente.") { offices_path }
  end

  private

  def set_office
    @office = Office.friendly_id.find(params[:id])
  end

  def office_params
    params.require(:office).permit([:name, :address, :phone, :image, :country_id])
  end

  def permitted_params
    params.permit(:office => [:name, :address, :phone, :image, :country_id])
  end
end

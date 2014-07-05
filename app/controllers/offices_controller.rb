class OfficesController < InheritedResources::Base
  before_action :set_office, only: [:show, :edit, :update, :destroy]

  def create
    @office = Office.new(office_params)
    @office.country_id = @country.try(:id)
    create!(notice: "Sucursal guardada correctamente.")
  end

  def update
    @office.country_id = @country.try(:id)
    update!(:notice => "Sucursal actualizada correctamente.")
  end

  private

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit([:name, :address, :phone, :image, :country_id])
  end
end

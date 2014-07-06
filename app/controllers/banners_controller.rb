class BannersController < InheritedResources::Base
  before_action :set_banner, only: [:show, :edit, :update, :destroy]

  def create
    @banner = Banner.new(banner_params)
    @banner.country_id = @country.try(:id)
    create!(:notice => "Banner guardado correctamente.")
  end

  def update
    @banner.country_id = @country.try(:id)
    update!(:notice => "Banner actualizado correctamente.")
  end


  private

  def set_banner
    @banner = Banner.find(params[:id])
  end

  def banner_params
    params.require(:banner).permit([:name, :location, :image, :link, :country_id])
  end

  def permitted_params
    params.permit(:banner => [:name, :location, :image, :link, :country_id])
  end

end

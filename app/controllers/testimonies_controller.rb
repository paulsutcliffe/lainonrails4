class TestimoniesController < InheritedResources::Base
  load_and_authorize_resource
  before_action :set_testimony, only: [:show, :edit, :update, :destroy]

  def index
    @testimonies = params[:type] ? @country.testimonies.with_type(params[:type] || "video").ordered.page(params[:page] || 1).per(18) : Testimony.ordered.page(params[:page] || 1).per(18)
  end

  def create
    @testimony = Testimony.new(testimony_params)
    @testimony.country_id = @country.try(:id)
    create!(notice: "Testimonio guardado correctamente.")
  end

  def update
    @testimony.country_id = @country.try(:id)
    update!(:notice => "Producto actualizado correctamente.")
  end

  private

  def set_testimony
    @testimony  = Testimony.friendly.find(params[:id])
  end

  def testimony_params
    params.require(:testimony).permit([:name, :content, :testimony_type, :image, :video_link])
  end

  def permitted_params
    params.permit(:testimony => [:name, :content, :testimony_type, :image, :video_link])
  end
end

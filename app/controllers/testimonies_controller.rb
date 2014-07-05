class TestimoniesController < InheritedResources::Base
  before_action :set_testimony, only: [:show, :edit, :update, :destroy]

  private

  def set_testimony
    @testimony  = Testimony.friendly.find(params[:id])
  end

  def permitted_params
    params.permit(:testimony => [:name, :content, :testimony_type, :image, :video_link])
  end
end

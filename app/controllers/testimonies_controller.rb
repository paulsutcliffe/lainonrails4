class TestimoniesController < InheritedResources::Base

  def permitted_params
    params.permit(:testimony => [:name, :content, :testimony_type, :image, :video_link])
  end
end

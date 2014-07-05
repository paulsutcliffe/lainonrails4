class ArticlesController < InheritedResources::Base

  def permitted_params
    params.permit(:article => [:title, :content, :image])
  end
end

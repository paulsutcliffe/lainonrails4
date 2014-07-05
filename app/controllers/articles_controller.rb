class ArticlesController < InheritedResources::Base
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  private

  def set_article
    @article = Article.friendly_id.find(params[:id])
  end

  def permitted_params
    params.permit(:article => [:title, :content, :image])
  end
end

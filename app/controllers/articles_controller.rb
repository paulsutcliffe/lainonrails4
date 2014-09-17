class ArticlesController < InheritedResources::Base
  load_and_authorize_resource
  skip_load_resource :only => [:create]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = @country.articles.ordered.page(params[:page] || 1).per(20) if @country
  end

  private

  def set_article
    @article = Article.friendly_id.find(params[:id])
  end

  def permitted_params
    params.permit(:article => [:title, :content, :image])
  end
end

class PagesController < InheritedResources::Base
  load_and_authorize_resource
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index
    @pages = Page.ordered.page(params[:page] || 1).per(20)
  end

  private

  def set_page
    @page = Page.find(params[:id])
  end

  def permitted_params
    params.permit(:page => [:title, :content, :imagen])
  end
end

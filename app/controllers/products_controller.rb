class ProductsController < InheritedResources::Base
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  private

  def set_product
    @product = Product.friendly_id.find(params[:id])
  end

  def permitted_params
    params.permit(:product => [:name, :description, :image])
  end
end

class ProductsController < InheritedResources::Base
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = @country.products.ordered if @country
  end

  def create
    @product = Product.new(product_params)
    @product.country_id = @country.try(:id)
    create!(notice: "Producto guardado correctamente.")
  end

  def update
    @product.country_id = @country.try(:id)
    update!(:notice => "Producto actualizado correctamente.")
  end

  private

  def set_product
    @product = Product.friendly_id.find(params[:id])
  end

  def product_params
    params.require(:product).permit([:name, :description, :image, :country_i, :video1, :video2, :video3])
  end

  def permitted_params
    params.permit(:product => [:name, :description, :image, :country_id, :video1, :video2, :video3])
  end
end

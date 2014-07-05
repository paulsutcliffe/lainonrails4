class ProductsController < InheritedResources::Base

  def permitted_params
    params.permit(:product => [:name, :description, :image])
  end
end

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    Product.create(name: params[name], )
  end

private
  def products_params
    params.require(:product).permit(:name, :price, :description, :inventory)

end

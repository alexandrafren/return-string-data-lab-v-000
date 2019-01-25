class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    Product.create(products_params)
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :inventory)

end

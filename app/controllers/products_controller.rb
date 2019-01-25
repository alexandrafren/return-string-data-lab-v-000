class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    Product.create(product_params)
    render index
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end


end

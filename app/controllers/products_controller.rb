class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def body
    product = Product.find(params[:id])
    render plain: product.description
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end


end

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

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def inventory
    inventory = Product.find(params[:id])
    if inventory.inventory > 0
      render "true"
    else
      return "false"
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end


end

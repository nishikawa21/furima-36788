class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def new
    @product=Product.new
  end

  def create
    Product.create(product_params)
  end

  private
  def product_params
    params.require(:puroduct).permit(:name, :explanation, :price)
  end
end

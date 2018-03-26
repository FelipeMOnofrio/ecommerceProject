class ProductsController < ApplicationController
  def index
    @products = Product.order(:product)
  end

  def show
    @product = Product.find(params[:id])
  end
end

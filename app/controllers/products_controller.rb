class ProductsController < ApplicationController

  def index
    @products = Product.order(:product).page(params[:page]).per(4)
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
  
  end

end

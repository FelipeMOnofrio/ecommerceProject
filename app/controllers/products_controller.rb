class ProductsController < ApplicationController

  def index
    @products = Product.order(:product).paginate(:page => params[:page], :per_page => 4)
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
  
  end

end

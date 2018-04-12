class OrdersController < ApplicationController
  def index
   @stock = params[:stock_id] = params[:stock_id]
  end

  def create
    redirect_to orders_path
  end

  private
  def order_param
    require(:stock_id).param[:stock_id]
  end

end
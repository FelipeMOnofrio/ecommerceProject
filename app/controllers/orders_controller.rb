class OrdersController < ApplicationController
  before_action :initialize_session

  def index
    load_order
  end

  def create
    id = params[:stock_id]


      if session[:stock_id].include?(id)
        @error_alert = "This order is already in your to call list."
      else
        session[:stock_id] << id
        @success_alert = "You successfully added the order to your cart."
      end


    redirect_to orders_path
  end

  def remove_order
    id = params[:id]
    session[:stock_id].delete(id)
    @success_alert = "Order remover successfull!"
    redirect_to orders_path
  end

  def clear_orders
    session[:stock_id] = []
    redirect_to orders_path
  end


  private
  def initialize_session
    session[:stock_id] ||= []
  end

  def load_order

    @stocks = Stock.where(id: session[:stock_id])

    sum = 0
    @stocks.each do |stock|
      total_price = stock.product.price - stock.product.discount
      sum += total_price
    end
    @total_price = sum


  end








end
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

  def save_order

    load_order

    @customer = Customer.find(params[session[:login_id]])

    @stocks.each do |stock|

      final_price = stock.product.price - stock.product.discount



      Order.create(:final_price => final_price, :order_date => DateTime.now,
                   :statue => 0, :stock_id => stock.id,
                   :address_id => @customer.addresses.first.id,:custumer_id => session[:login_id])

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



end
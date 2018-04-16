class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  before_action :load_categories
  before_action :load_about
  before_action :load_customer

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  private
  def load_categories
    @categories_menu = Category.all
  end

  def load_about
    @about = About.first
  end

  def load_customer
    if session[:customer_id].nil?
      session[:customer_id] = DateTime.now
    end
  end


end

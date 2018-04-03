class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_categories
  before_action :load_customer

  private

  def load_categories
    @categories = Category.all
  end

  def load_customer
    if session[:customer_id].nil?
      session[:customer_id] = DateTime.now
    end
  end

end

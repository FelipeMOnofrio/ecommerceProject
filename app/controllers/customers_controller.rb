class CustomersController < ApplicationController
  before_action :set_customer_params, only: [:show, :edit, :update]

  def index

    if session[:login] == true
     redirect_to edit_customer_path(session[:login_id])
    end
  end

  def show
  end

  def edit
  end

  def create

    customer = Customer.create(customer_params)
    province = customer.addresses.build(address_params)
    province.save
    session[:login] = true if !customer.nil?
    session[:customer_id] = nil
    session[:login_id] = customer.id
    redirect_to customers_path
    # logger.debug province.errors.inspect

  end

  def update
    Customer.update(customer_params)
    Address.update(address_params)
    redirect_to customers_path
  end

  private
  def set_customer_params
      @customer = Customer.find(params[:id])
  end

  def customer_params
    params.permit(:name, :email, :password, :birth_date, :phone)
  end

  def address_params
    params.permit(:province, :city, :postal_code, :street, :number, :apartment)
  end


end

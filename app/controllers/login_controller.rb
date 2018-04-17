class LoginController < ApplicationController
  def login

    customer = Customer.where(login_params).first
    if !customer.nil?

      session[:login] = true
      session[:login_id] = customer.id

     redirect_to customers_path

    else

      @error_message = "The login failled"

    end

  end

  def logout
    session[:login] = false
    redirect_to root_path
  end

  private
  def login_params
    params.permit(:email, :password)
  end

end

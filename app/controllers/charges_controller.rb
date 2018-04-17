class ChargesController < ApplicationController
  def new

  end

  def create

    @customerStore = Customer.find(params[session[:login_id]])

    @stocks = Stock.where(id: session[:stock_id])

    final_price = 0

    @stocks.each do |stock|

      total_price = stock.product.price - stock.product.discount

      pst = @customerStore.addresses.first.province.pst

      hst = @customerStore.addresses.first.province.hst

      if hst > 0

        total_price = total_price + (total_price * hst)

      else

        total_price = total_price + (total_price * pst) + (total_price * 0.05)

      end

      @order = Order.create(:final_price => total_price, :order_date => DateTime.now,
                            :statue => 0, :stock_id => stock.id,
                            :address_id => @customerStore.addresses.first.id,:custumer_id => session[:login_id])

      final_price += total_price

    end

    @amount = final_price * 100;
    @description = "Shopping Card from #{@customerStore.name}"



    @customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
    )

    @charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => @description,
        :currency    => 'cad'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path

  end
end

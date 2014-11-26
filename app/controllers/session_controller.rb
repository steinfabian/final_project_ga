class SessionController < ApplicationController

  # Login form
  def new
  end

  # Where the login form POSTs data
  def create
    customer = Customer.where(:email => params[:email]).first
    if customer.present? && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to checkout_path session[:order_id]
    else
      redirect_to login_path
    end
  end

  # Logout
  def destroy
    session[:customer_id] = nil
    redirect_to root_path
  end


end
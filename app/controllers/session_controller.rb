class SessionController < ApplicationController

  # Login form
  def new
  end

  # Where the login form POSTs data
  def create
    customer = Customer.where(:email => params[:email]).first
    if customer.present? && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      order = Order.find_by :id => session[:order_id]
      order = customer.orders.last unless order.present?
      if order.present?
        redirect_to order_path order.id
      else
        redirect_to root_path # No order found
      end
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
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Before the program executes anything, it will check if we have an existing customer logged in. If not it will set the customer id to nil for this session. 
  before_action :authenticate_customer

  private 
  def authenticate_customer
    @current_customer = Customer.find_by(:id => session[:customer_id])
    session[:customer_id] = nil unless @current_customer.present?
  end
end

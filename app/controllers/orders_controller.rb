class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @customer = @current_customer
    @order = Order.find_by :id => params[:id]
    redirect_to root_path unless @customer.present? # && @order.try(:customer_id) == @customer.try(:id)
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    # CREATE TWO PRODUCTS: TOP AND BOTTOM
    #find the values for kind and image for the top product from the params and consider them when creating the product
    @kind_top = params['product']['0']['kind']
    @image_top = params['product']['0']['image']
    @product_top = Product.create(:kind => @kind_top, :image => @image_top)
    #as above for the bottom product
    @kind_bottom = params['product']['1']['kind']
    @image_bottom = params['product']['1']['image']
    @product_bottom = Product.create(:kind => @kind_bottom, :image => @image_bottom)

    # CREATE THREE CUSTOMISATIONS: CUP AND STRAP FOR THE TOP PRODUCT PLUS BOTTOM FOR THE BOTTOM PRODUCT
    #find the ids of each parameter of the CUP customisation by getting the params and looking up the respective ids
    @cup_cust_product_id = @product_top.id
    @cup_cust_part_id = Part.find_by(:name => params['customisations']['customisationCup']['part'])['id']
    @cup_cust_print_id = Print.find_by(:name => params['customisations']['customisationCup']['print'])['id']
    @cup_cust_style_id = Style.find_by(:name => params['customisations']['customisationCup']['style'], :kind => 'top')['id']
    @customisation_cup = Customisation.create(
      :product_id => @cup_cust_product_id, 
      :part_id => @cup_cust_part_id, 
      :print_id => @cup_cust_print_id, 
      :style_id => @cup_cust_style_id)

    #STRAP
    @strap_cust_product_id = @product_top.id
    @strap_cust_part_id = Part.find_by(:name => params['customisations']['customisationStrap']['part'])['id']
    @strap_cust_print_id = Print.find_by(:name => params['customisations']['customisationStrap']['print'])['id']
    @strap_cust_style_id = Style.find_by(:name => params['customisations']['customisationStrap']['style'], :kind => 'top')['id']
    @customisation_strap = Customisation.create(
      :product_id => @strap_cust_product_id, 
      :part_id => @strap_cust_part_id, 
      :print_id => @strap_cust_print_id, 
      :style_id => @strap_cust_style_id)

    #BOTTOM
    @bottom_cust_product_id = @product_bottom.id
    @bottom_cust_part_id = Part.find_by(:name => params['customisations']['customisationBottom']['part'])['id']
    @bottom_cust_print_id = Print.find_by(:name => params['customisations']['customisationBottom']['print'])['id']
    @bottom_cust_style_id = Style.find_by(:name => params['customisations']['customisationBottom']['style'], :kind => 'bottom')['id']   
    @customisation_bottom = Customisation.create(
      :product_id => @bottom_cust_product_id, 
      :part_id => @bottom_cust_part_id, 
      :print_id => @bottom_cust_print_id, 
      :style_id => @bottom_cust_style_id)

    # CREATE THE ORDER, ATTACH PRODUCTS, UPDATE PRICE
    @order = Order.create(:status => params['order']['status'])
    session[:order_id] = @order.id
    @order.products << @product_top 
    @order.products << @product_bottom
    @top_price = @product_top.customisations.first.style.price
    @product_top.update :price => @top_price
    @bottom_price = @product_bottom.customisations.first.style.price
    @product_bottom.update :price => @bottom_price
    @total_price = @top_price + @bottom_price
    @order.update :total_price => @total_price
    # @current_customer.orders << @order

    if @current_customer.present?
      destination = order_path @order
    else
      destination = login_path
    end

    render :json => {
      :destination => destination
    }

  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    @order = Order.find params[:id]
    @order.update :status => 'completed'
    # @customer.orders << @order
    redirect_to customer_path @current_customer

  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def order_params
    #   params.require(:order).permit(:customer_id, :status, :total_price)
    # end

end

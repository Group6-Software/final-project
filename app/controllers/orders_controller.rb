class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  
  helper_method :get_primary_key_controller
  def get_primary_key_controller(ord)
    ord.get_primary_key_model
  end

  # GET /orders
  # GET /orders.json
  def index
    if isEmployee?
      @orders = Order.all
    
    elsif isCustomer?
      customer = Customer.find_by email_address: current_user.email_address
      @orders = customer.orders
      
    else
      @orders = []
    end
      
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
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
    @order = Order.new(order_params)
    item = Item.find_by item_id: @order.item_id

    respond_to do |format|
      if (item == nil)
          format.html { redirect_to items_url, notice: 'You entered an invalid item ID. The following are available:' }
      elsif @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
        
        # set other things if correct
        @order.order_id = @order.id
        @order.item_name = item.name
        @order.cost = (item.cost) * (@order.quantity)
        @order.status = "new"
        @order.placed_at = Time.now
        
        if isCustomer?
          customer = Customer.find_by email_address: current_user.email_address
          @order.customer_id = customer.id
        end
        
        @order.save
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
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
    def order_params
      params.require(:order).permit(:order_id, :customer_id, :item_id, :quantity,:placed_at, :status)
    end
end

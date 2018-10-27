class OrdersController < ApplicationController
  def index
    @orders = Order.all.includes(:customer, :salesrep, :products)
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end

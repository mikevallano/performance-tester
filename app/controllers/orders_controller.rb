class OrdersController < ApplicationController
  before_action :set_order, only: [:show]
  def index
    @orders = Order.all.includes(:customer, :salesrep, :products)
  end

  def show
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.fetch(:order, {})
    end
end

class Api::V1::OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: OrderSerializer.new(orders).order_info
  end

  def show
    order = Order.where(id: params[:id])
    render json: OrderSerializer.new(order).order_info
  end
end

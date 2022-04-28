class AccountsController < ApplicationController
  def index
    @orders = Order.where(account_id: params[:id])
  end

  def show
    @order = OrderProduct.where(order_id: params[:order_id])
    @info = Order.where(id: params[:order_id])
  end
end

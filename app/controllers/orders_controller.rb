class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    order = Order.new(quantity: params[:quantity],
                      user_id: current_user.id,
                      product_id: params[:product_id])
    order.calculate_absolute_total
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    if current_user && current_user == @order.user
      render "show.html.erb"
    else
      flash[:warning] = "This is not your order. Go away!!"
      redirect_to "/"
    end
  end
end

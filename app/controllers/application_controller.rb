class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :cart_count

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  private
  
  def cart_count
    @cart_count = current_user.carted_products.where(status: "carted").count
  end
end

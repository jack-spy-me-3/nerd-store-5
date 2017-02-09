class ProductsController < ApplicationController
  # before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    sort_attribute = params[:sort_attribute]
    sort_order = params[:sort_order] || "asc"
    discount_price = params[:discount]
    search_result = params[:search_result]
    if sort_attribute
      @products = Product.order(sort_attribute => sort_order)
    elsif discount_price
      @products = Product.where("price < ?", discount_price)
    elsif search_result
      @products = Product.where("name ILIKE ?", "%#{search_result}%")
    elsif params[:category]
      selected_category = Category.find_by(name: params[:category])
      @products = selected_category.products
    else
      @products = Product.all
    end
    if session[:count] == nil
      session[:count] = 1
    else
      session[:count] += 1
    end
    @visit_count = session[:count]
    render "index.html.erb"
  end

  def new
    @product = Product.new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id]
      )

    if @product.save
      @product.images.create(url: params[:image])
      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      flash[:error] = "You screwed up real bad..."
      render "new.html.erb"
      # redirect_to "/products/new"
    end

  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.assign_attributes(
      name: params[:name],
      description: params[:description],
      price: params[:price]
      )
    if @product.save

      flash[:success] = "Product Updated"
      redirect_to "/products/#{@product.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Deleted"
    redirect_to "/"
  end

  # def search
  #   search_result = params[:search_result]
  #   @products = Product.where("name LIKE ?", "%#{search_result}%")
  #   render "index.html.erb"
  # end
end


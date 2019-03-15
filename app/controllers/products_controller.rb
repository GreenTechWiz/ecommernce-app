class ProductsController < ApplicationController
  def index
    #Review for later; What is a controller. 
    #We set a @ varible, calling out Product model and all of them IE why we use .all
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def create
    product = Product.new(name: params[:name], description: params[:description], price: params[:price])
    product.save
    redirect_to "/products/#{product.id}"
  end

end

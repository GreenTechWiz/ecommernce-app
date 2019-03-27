class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    #if this exist, then do this
    if params[:category_id] && Category.ids.include?(params[:category_id].to_i)
      @category = Category.find(params[:category_id])
      @products = @category.products
    else
      @products = Product.all
    end      

    #Review for later; What is a controller. 
    #We set a @ varible, calling out Product model and all of them IE why we use .all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @categories = Category.all
  end

  def create
    product = Product.new(name: params[:name],
                          description: params[:description],
                          price: params[:price],
                          image_tag: params[:image_tag],
                          category_id: params[:category_id]
                          )
    product.save
    puts product.errors.full_messages
    flash[:success] = "Product created!"
    redirect_to "/products/#{product.id}"
  end

  def edit
    @product = Product.find(params[:id]) 
    @categories = Category.all 
  end

  def update
    product = Product.find(params[:id])
    product.update(name: params[:name],
                  description: params[:description],
                  price: params[:price],
                  image_tag: params[:image_tag],
                  category_id: params[:category_id]
                  )
    flash[:success] = "Stock shifted around!"
    redirect_to "/products/#{product.id}"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:success] = "Out of stock, quit asking!"
    redirect_to "/products"
  end

end

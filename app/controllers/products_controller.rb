class ProductsController < ApplicationController
  def index
    #Review for later; What is a controller. 
    #We set a @ varible, calling out Product model and all of them IE why we use .all
    @products = Product.all
  end
end

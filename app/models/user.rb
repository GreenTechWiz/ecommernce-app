class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_products
  has_many :products, through: :user_products

  def products_in_cart
    user_products.where(removed_from_cart: false)    
  end

  def total_price_in_cart
    cart = 0
    cart = products_in_cart.map { |products| products.values[1] }
    "$%.2f" % (cart.inject(:+) / 100.00)
  end
  
  
end

class Product < ApplicationRecord
  validates :name, length: {maximum: 40}, presence: true
  belongs_to :category
  validates :description, length: {maximum: 500}, presence: true
  validates :image_tag, presence: true
  validates :price, numericality: {greater_than: 0}

  def price_format
    "$%.2f" % (price / 100.00)
  end
end

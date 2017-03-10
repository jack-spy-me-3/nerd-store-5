class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, :price, presence: true
  # validates :name, uniqueness: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, message: "must be a price"}

  def sale_message
    message = "Discount item!!!" if price.to_i <= 5
    message = "Every day value!!" if price.to_i > 5
    message
  end

  def tax
    price.to_i * 0.09
  end

  def total
    price.to_i + tax
  end

  def red_price
    "red-price" if sale_message == "Discount item!!!"
  end

end

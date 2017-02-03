class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product, optional: true

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_subtotal
    self.subtotal = product.price * quantity
  end

  def calculate_tax
    self.tax = product.price * quantity * 0.09
  end

  def calculate_absolute_total
    self.calculate_subtotal
    self.calculate_tax
    self.calculate_total
  end
end

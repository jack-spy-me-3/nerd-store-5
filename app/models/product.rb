class Product < ActiveRecord::Base

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

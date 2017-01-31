Product.all.each do |product|
  Image.create(url: product.image, product_id: product.id)
end
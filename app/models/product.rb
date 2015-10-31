class Product < ActiveRecord::Base
	has_many :reviews

  #Buy product method that takes a product as an argument, this method will be called from the show view of the Product
  private
  	def buy product
  		CartItem.create id: product.id, description: product.description, price: product.price
  	end

end



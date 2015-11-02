class CartsController < ApplicationController
  
  def show
  	render plain: params
  end

  def add
  	#render plain: params
  	p = Product.find params[:product_id]
  	c = CartProduct.create
    c.user_id = current_user.id
    c.price = p.price
    c.description = p.description
  	render "carts/show"
  end

  def remove
    CartItem.destroy []
  end
end

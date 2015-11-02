class CartsController < ApplicationController
  
  def show

  end

  def add
  	#render plain: params
  	p = Product.find params[:product_id]
  	c = CartProduct.create
    c.cart_id = current_user.id
    c.price = p.price
    c.description = p.description
    c.save
  	render "carts/show"
  end

  def remove
    #render plain: params
    CartProduct.destroy params[:product_id]
    render "carts/show"
  end
end

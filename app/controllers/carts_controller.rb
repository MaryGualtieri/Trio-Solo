class CartsController < ApplicationController
  
  def show
    @products = find_all
  end

  def add
  	#render plain: params
  	p = Product.find params[:product_id]
  	c = CartProduct.create
    c.cart_id = current_user.id
    c.price = p.price
    c.description = p.description
    c.save
    @products = find_all
  	render "carts/show"
  end

  def remove
    #render plain: params
    CartProduct.destroy params[:product_id]
    @products = find_all
    render "carts/show"
  end

  private

  def find_all
    productArray = []
    CartProduct.all.each do |cartProduct|
      productArray << cartProduct if cartProduct.cart_id == current_user.id
    end
    productArray
  end

end

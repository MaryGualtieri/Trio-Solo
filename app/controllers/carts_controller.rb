class CartsController < ApplicationController
  
  def show
  	render plain: params
  end

  def add
  	#render plain: params
  	p = Product.find params[:product_id]
  	render "carts/show"
  end

  def remove
  end
end

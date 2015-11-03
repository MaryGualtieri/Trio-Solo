class ReviewsController < ApplicationController

	def new
		@review = Review.new
		@review.product_id = params[:format]
		@product = find_product @review.product_id
	end

	def create
		@review = Review.new(reviews_params)
		@product = find_product params[:review][:product_id]
		redirect_to @product
	end

	private

	def reviews_params
    params.require(:review).permit(:body, :product_id)
  end

  def find_product product_id
  	Product.find product_id
  end

end

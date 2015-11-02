class ReviewsController < ApplicationController
	

	def new
		@review = Review.new
		@review.product_id = params[:format]
	end

	def create 
		@review = Review.new(reviews_params)
		render 'products/show.html.erb'
	end

	private

	def reviews_params
    params.require(:review).permit(:body)
  end
end

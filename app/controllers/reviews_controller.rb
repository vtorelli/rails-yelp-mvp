class ReviewsController < ApplicationController
  def new
    find_restaurant
    @review = Review.new
  end

  def create
    find_restaurant
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

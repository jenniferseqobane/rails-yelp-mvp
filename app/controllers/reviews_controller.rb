class ReviewsController < ApplicationController
  before_action :set_review, only: [show edit update destroy]
  before_action :set_review, only: [create]

  def index
    @reviews = @restaurant.reviews
end

def new
  @review = @restaurant.reviews.build
end

def create
  @review = @restaurant,reviews,build(review_params)
  if @review.save
    redirect_to product_reviews_path(@restaurant),notice: 'Review was succeffully created'
  else
    render :new, status: :unprocessable_entity
  end
end

def show
end

def edit
end

def update
  if @review,update(review_params)
    rediect_to review_path(@review), notice: 'Review was succeffully created'
  else
    render :edit, status: :unprocessable_entity
  end
end

def destroy@review.destroy
  redirect_to product_review_path(@review,restaurant), notice: 'Review was succeffully created'
end

private

def set_review
  @review = Review.find(params[:id])
end

def set_restaurant
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def review_params
  params.require(:review).permit(:rating, :content, :product_id)
end

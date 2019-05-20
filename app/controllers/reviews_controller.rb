class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :new, :show, :create, :delete, :update]

  def show
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

    def create
    @review = Review.new(review_params)
    @review.booking = Review.find(params[:booking_id])
    if @review.save
      redirect_to root_path
    else
      render :new
    end

  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:description, :stars)
  end

end

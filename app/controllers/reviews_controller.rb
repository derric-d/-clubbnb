class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :show, :delete, :update]

  def show
  end

  def new
    @review = Review.new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:booking_id])
  end

    def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    #@review.flat = @flat
    @review.booking = Booking.find(params[:booking_id])
    if @review.save!
      redirect_to flat_path(@flat)
    else
      render :new
    end

  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:description, :stars, :booking_id)
  end

end

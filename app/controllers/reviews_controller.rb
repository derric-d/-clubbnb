class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :show, :delete, :update, :edit]

  def show
    @flat = Flat.find(params[:flat_id])
  end

  def new
    @review = Review.new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    if @review.save!
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to flat_review_path(@flat), notice: 'review has been successfully updated'
    else
      render :edit
    end
  end

  def edit
    @flat = Flat.find(params[:flat_id])
    @review.booking = Booking.find(params[:booking_id])
    # if @review.save
    #   redirect_to flat_booking_review(@flat, @booking, @review)
    # else
    #   render :new
    # end
    # @review.flat = @flat
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:description, :stars, :booking_id)
  end
end

class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :show, :destroy, :update, :edit]

  def index
    @booking = Booking.find(params[:booking_id])
    # @reviews = Review.where(booking_id: @booking.id)

    # @flat = Flat.find(params[:flat_id])
    # authorize @review
    @reviews = policy_scope(Review).where(booking_id: @booking.id)

  end

  def show
    @flat = Flat.find(params[:flat_id])
    authorize @review
  end

  def new
    @review = Review.new
    authorize @review
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    authorize @review
    @review.booking = Booking.find(params[:booking_id])
    if @review.save!
      redirect_to flat_review_path(@flat, @review)
    else
      render :new
    end
  end

  def update
    authorize @review
    if @review.update(review_params)
      redirect_to flat_review_path(@flat, @review), notice: 'review has been successfully updated'
    else
      render :edit
    end
  end

  def destroy
    authorize @review
    @flat = Flat.find(params[:flat_id])
    @review.destroy
    redirect_to flat_path(@flat), notice: 'review was successfully deleted.'
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:description, :stars, :booking_id)
  end
end

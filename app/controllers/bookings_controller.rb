class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = policy_scope(Booking).where(params[:id])
    @bookings = Booking.all
    @flat = Flat.find(params[:flat_id])
  end

  def show
    @flat = Flat.find(params[:flat_id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    @user = current_user
    @flat = Flat.find(params[:flat_id])
    authorize @booking
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
      redirect_to flat_booking_path(@flat, @booking)
    else
      render :new
    end
  end

  def destroy
    authorize @booking
    # raise
    @flat = @booking.flat
    @booking.destroy
    redirect_to flat_path(@flat), notice: 'booking was successfully deleted.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:move_in_date, :move_out_date, :flat_id)
  end

end

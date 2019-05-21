class BookingsController < ApplicationController
    before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.all
  end

  def show
  end


  def new
    @booking = Booking.new
    @user = current_user
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
      redirect_to flat_bookings_path(@booking)
    else
      render :new
    end
  end

private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:move_in_date, :move_out_date, :flat_id)
  end

end

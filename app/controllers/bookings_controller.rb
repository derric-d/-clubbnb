class BookingsController < ApplicationController
    before_action :set_booking, only: [:show]

  def show
  end


  def new
    @booking = Booking.new
    @user = current_user
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = Flat.find(params[:flat_id])
    @booking.user = User.find(params[:user_id])
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:move_in_date, :move_out_date)
  end

end

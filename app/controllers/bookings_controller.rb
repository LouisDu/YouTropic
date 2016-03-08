class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy ]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to action: 'index'
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path

  end

  private

  def booking_params
    params.require(:booking).permit(:place_id, :user_id, :checkin, :checkout, :bill)
  end

  def set_booking
    @booking = booking.find(params[:id])
  end

end

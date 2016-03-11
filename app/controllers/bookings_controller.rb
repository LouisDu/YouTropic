class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy ]

  def show
    @bill = (@booking.checkin - @booking.checkout).to_i * @booking.place.price
  end

  def create
    @user = current_user
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.place = @place
    @booking.user = @user

    if @booking.save
      redirect_to place_booking_path(@booking.place, @booking)
    else
      render 'places/show'
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
    @booking = Booking.find(params[:id])
  end

end

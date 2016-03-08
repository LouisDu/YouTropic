class PlacesController < ApplicationController
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]

  def index
    @places = Place.all
  end

  def show
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to @place
    else
      render :new
    end
  end

  def edit
  end

  def update
    @place.update(place_params)
    redirect_to action: 'index'
  end

  def destroy
    @place.destroy
    redirect_to places_path

  end

  private

  def place_params
    params.require(:place).permit(:name, :category_id, :capacity, :price, :street, :city, :zipcode, :country, :description, :user_id)
  end

  def set_place
    @place = Place.find(params[:id])
  end

end

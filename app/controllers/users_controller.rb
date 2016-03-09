class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @User = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
class UsersController < ApplicationController
  before_action :set_profile, only: [ :show, :edit, :update ]

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    @User = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  private

  def profile_params
   params.require(:user).permit(:first_name, :last_name, :phone_number, :profile_picture)
  end

  def set_profile
    @profile = current_user.profile
  end

end

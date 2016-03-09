class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path
  end

  private

  def profile_params
   params.require(:profile).permit(:first_name, :last_name, :phone_number, :profile_picture)
  end

  def set_profile
    @profile = current_user.profile
  end
end

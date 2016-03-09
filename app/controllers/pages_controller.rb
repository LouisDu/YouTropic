class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
  render :home, layout: "home"
  end

  def contact
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user
    @plants = Plant.all
    @gardens
    @photo
  end
end

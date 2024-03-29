class GardensController < ApplicationController
  def index
    @garden = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
    @plant = Plant.new(garden: @garden)
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.create(garden_params)
    @garden.user = current_user
    if @garden.save
      redirect_to garden_path(@garden)
      flash[:success] = 'Bienvenue à bord ! Vous pouvez maintenant ajouter des plantes à votre jardin 🌱'
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

private

  def garden_params
    params.require(:garden).permit(:name, :photo, :plant_id)
  end
end

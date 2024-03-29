class PlantsController < ApplicationController

  skip_before_action :authenticate_user!, only: :show

  def index
    @plant = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def create
    @garden = Garden.find(params[:garden_id])

    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    if @plant.save!
      redirect_to garden_path(@garden)
      flash[:success] = 'Belle plante ! Que le temps la rende belle et vigoureuse 🌵'
    else
      render :new
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.garden
    @plant.destroy
    redirect_to garden_path(@plant.garden)
  end

  def is_gonna_die
    @plant = Plant.find(params[:id])
    @plant.water? flash[:alert] = "N'oubliez pas d'arroser votre plante aujourd'hui 💦"
  end
private

  def plant_params
    params.require(:plant).permit(:nickname, :science_name, :origin, :genre, :advice, :story, :photo, :garden_id)
  end

end

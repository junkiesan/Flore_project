class GardensController < ApplicationController
  def index
    @garden = Garden.all
  end

  def method_name

  end
end

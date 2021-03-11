class PixelsPopulationController < ApplicationController
  def index
    @pixels_population = PixelsPopulation.new
  end
end

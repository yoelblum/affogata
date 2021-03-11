class ApplicationController < ActionController::Base
  def show_pixels
    @pixels_population = PixelsPopulation.new
  end
end

class CitiesController < ApplicationController


	def show
    @city = City.find_by(id: params[:id])
    @potin_by_city = @city.gossips
	end
end

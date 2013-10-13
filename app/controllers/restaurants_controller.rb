class RestaurantsController < ApplicationController

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(restaurant_params)
		redirect_to restaurants_path
	end

	def index
		@restaurants = Restaurant.all
	end

	private

		def restaurant_params
			params.require(:restaurant).permit(:name, :description)
		end
end

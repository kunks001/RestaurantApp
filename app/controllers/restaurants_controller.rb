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

	def show
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		@restaurant.update(restaurant_params)
		if @restaurant.save
			redirect_to restaurants_path
		else
			render 'edit'
		end
	end

	private

		def restaurant_params
			params.require(:restaurant).permit(:name, :description)
		end
end

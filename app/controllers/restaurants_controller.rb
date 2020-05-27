class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
  
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

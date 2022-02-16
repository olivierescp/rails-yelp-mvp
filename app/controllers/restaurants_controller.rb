class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:title, :details, :completed)
  end
end

class MenuController < ApplicationController
  def index
    @sections = Section.all

    if params[:section]
      @section = Section.where(name: params[:section]).first
      @food_items = @section.food_items
    else
      @food_items = FoodItem.all
    end   
  end
end

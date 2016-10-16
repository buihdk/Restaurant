class MenuController < ApplicationController
  def index
    @sections = Section.all

    if params[:section]
      @section = Section.where(name: params[:section]).first
      @food_items = @section.food_items
    else
      @food_items = FoodItem.all
    end 

    if params[:sort_column]
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
  end
end

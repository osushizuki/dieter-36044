class MealsController < ApplicationController

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def meal_params
    params.require(:meal).permit(:calorie,:explanation).merge(user_id: current_user.id)
  end

end

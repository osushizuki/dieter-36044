class ExercisesController < ApplicationController
  def index
    
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to root_path
    else
      render :new
    end
  end

  def exercise_params
    params.require(:exercise).permit(:time,:menu_id).merge(user_id: current_user.id)
  end
end

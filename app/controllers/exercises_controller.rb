class ExercisesController < ApplicationController
  def index
    @healths = Health.all
    @graph = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
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

  private
  def exercise_params
    params.require(:exercise).permit(:time,:menu_id).merge(user_id: current_user.id)
  end

end

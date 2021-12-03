class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @health = Health.all
  end

  private

  def user_params
    params.require(:user).permit(:nick_name, :sex_id, :weight, :height, :age, :habit_id)
  end

end

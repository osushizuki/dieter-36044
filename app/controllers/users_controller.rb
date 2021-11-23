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
    
  end

  private

  def user_params
    params.require(:user).permit(:nick_name, :email, :weight, :height, :age, :habit_id)
  end

end

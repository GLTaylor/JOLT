class UsersController < ApplicationController
before_action: set user_params
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo)
  end
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end
  
  def index
    @users = User.all
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end

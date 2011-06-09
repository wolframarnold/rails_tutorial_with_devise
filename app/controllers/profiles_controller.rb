class ProfilesController < ApplicationController

  def index
    @users = User.paginate(:page => params[:page])
    @title = "All Users"
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(:page => params[:page])
    @title = @user.name
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to profiles_path
  end

end

class UsersController < ApplicationController

  def index
    @users = User.all
    @title = "All Users"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

end

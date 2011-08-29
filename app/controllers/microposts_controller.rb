class MicropostsController < ApplicationController

  before_filter :authenticate_user!
  
  def create
    @micropost  = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      render 'pages/home'
    end
  end

def destroy
    @micropost = current_user.microposts.find_by_id(params[:id])
    if @micropost.nil?
      redirect_to root_path
    else
      @micropost.destroy
      redirect_to :back
    end
  end
end

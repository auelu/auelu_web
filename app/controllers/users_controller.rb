class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def show
  end
  def index
    @user = User.order("number")
  end
  def create
    @user = User.new(user_params)
    @user.photo = params[:user][:photo].read
    @user.photo_content_type = params[:user][:photo].content_type
    
    if @user.save
      render :index  
    else
      render :new
      
    end
  end
  def edit
  end
  def delete
  end
  private
    def user_params
      params.require(:user).permit(:name,:number,:birthday,:school,:belong) 
  
    end
end
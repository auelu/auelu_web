class UsersController < ApplicationController
  before_action :set_user, only: [:photo]
  def new
    @user=User.new
  end
  def show
  end
  def index
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
  def photo
    send_data(@user.photo,type: @user.photo_content_type, disposition: :inline)
  end
  private
    def set_user
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:name,:number,:birthday,:school,:belong) 
  
    end
end
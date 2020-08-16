class LoginsController < ApplicationController
  def login
  end
  def create
    if params[:id].eql?("1111@a.com")#??????????????????????
      redirect_to root_url
    else
      redirect_to login_path
    end
  end
  
  def show
    
  end
  
end
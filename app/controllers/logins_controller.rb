class LoginsController < ApplicationController
  def login
  end
  def create
    if params[:login][:id].eql?("1111")#??????????????????????
      redirect_to root_url
    else
      redirect_to login_path
    end
  end
  
  def show
    
  end
  
end
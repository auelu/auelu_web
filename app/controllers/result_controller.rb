class ResultController < ApplicationController
  def new
    @gamedata = GameResult.new
  end
  def show
    @gamedata=GameResult.find(params[:id])
  end
  def create
    @gamedata = GameResult.new(gamedate_params)
    if @gamedata.save
      redirect_to result_path
    else
      render :new
    end
  end
  def edit
  end
  def destroy
  end
  private
    def gamedate_params
      params.require(:game_result).permit(:gamedate, :gametitle, :gameplace, :gameopponent,  :gamepoint, :gameassistant)
    end
end
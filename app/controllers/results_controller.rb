class ResultsController < ApplicationController
  def new
    @gamedata = GameResult.new
  end
  
  def show
    @gamedata = GameResult.find(params[:id])
  end
  
  def index
    @gamedatas = GameResult.order("gamedate DESC").page(params[:page]).per(5)
    @archives = GameResult.group_by_month(:gamedate, format: "%Y/%m", reverse: true, series: false).count
  end
  
  def archives
    @yyyymm = params[:yyyymm]
    @archives = GameResult.group_by_month(:gamedate, format: "%Y/%m", reverse: true, series: false).count
    yyyy = @yyyymm[0,4].to_i
    mm =   @yyyymm.delete("月")[5,2].to_i
    end_of_date = Date.new(yyyy, mm, -1)
    date = Date.new(yyyy, mm, 1)
    @gamedatas = GameResult.where(gamedate: date..end_of_date).order("gamedate DESC").page(params[:page]).per(5)
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
class Api::V1::PlayersController < ApiController

  def index
    players = User.all.order("number")
    render json: players
  end

  def show
    @player = User.find(params[:id])
    render json: @player
  end

end
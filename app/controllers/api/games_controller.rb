class Api::GamesController < ApplicationController
  def create
    game = Game.new(game_params)
    if game.save
      render json: game, status: :created
    end
  end

  def index
    render json: Game.all
  end

  def update
    game = Game.find(params[:id])
    if game.update(game_params)
      render json: game
    end
  end

  def destroy
    game = Game.find(params[:id])
    game.destroy
    head :no_content
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  private

  def game_params
    params.require(:game).permit(:title, :release_year, :studio_id, :genre_id)
  end
end

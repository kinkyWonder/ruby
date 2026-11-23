class Api::GenresController < ApplicationController
  def index
    render json: Genre.all
  end
  def show
    genre = Genre.find(params[:id])
    render json: genre
  end
end

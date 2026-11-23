class Api::StudiosController < ApplicationController
  def index
    render json: Studio.all
  end

  def show
    studio = Studio.find(params[:id])
    render json: studio
  end
end

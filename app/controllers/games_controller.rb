class GamesController < ApplicationController

  def index
    @games = Game.all.shuffle
  end

  def show
    @game = Game.find(params[:id])
  end
end

class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def create
    game = Game.find(params[:game_id])
    user = User.find(params[:user_id])
    Favorite.create(game: game, user: user)
    flash[:notice] = "This game has been saved to your favorites"
    redirect_to game_path(game)
  end



end

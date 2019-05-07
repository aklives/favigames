class WelcomeController < ApplicationController
  before_action :require_logged_in

  def home
    @favorties = Favorite.all.select {|f| f.user_id == @user.id }
  end
end

class FavorisController < ApplicationController
  def index
    @favoris = Favoris.all
  end

  def show
    @favoris = Favoris.find(params[:id])
  end
end

class FavsController < ApplicationController
  before_action :set_annonce, only: [:create]

  def index
    @favs = current_user.favs.all
  end

  # POST /annonces/:id/favs
  def create
    @fav = current_user.favs.new(annonce: @annonce)
    @fav.save
    redirect_to :back
  end

  def destroy
    @fav = Fav.find(params[:id])
    @fav.destroy
    redirect_to :back
  end

  private

  def set_annonce
    @annonce = Annonce.find(params[:annonce_id])
  end

end

class AnnoncesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search] and not params[:search][:city].blank?
      @annonces = Annonce.near(params[:search][:city], 100)
      @search_city = params[:search][:city]
    else
      @annonces = Annonce.all
    end
    @annonces_map = @annonces.where("latitude is not null and longitude is not null")


    @markers = Gmaps4rails.build_markers(@annonces_map) do |annonce, marker|
      marker.lat annonce.latitude
      marker.lng annonce.longitude
    end
  end

  def show
    @annonce = Annonce.find(params[:id])
    @message = Message.new
  end

  def new
    @annonce = Annonce.new
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user_id = current_user.id
    if @annonce.save
      redirect_to annonces_path
    else
      render :new
    end
  end

  def edit
    @annonce = Annonce.find(params[:id])
  end

  def update
    @annonce = Annonce.find(params[:id])
    @annonce.update(annonce_params)
    redirect_to annonces_path
  end

  def destroy
    @annonce = Annonce.find(params[:id])
    @annonce.destroy
    redirect_to annonces_path
  end

  private

  def annonce_params
    params.require(:annonce).permit(:title, :description, :address, :picture)
  end
end

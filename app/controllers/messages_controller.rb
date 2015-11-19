class MessagesController < ApplicationController
  before_action :set_annonce, only: [:create]

  def index
    @messages = current_user.messages.last(annonce: @annonce)
  end

  def show
    @messages = current_user.messages.all(annonce: @annonce)
  end

  # GET /annonces/:id/messages/new
  def new
    @message = Message.new
  end

  # POST /annonces/:id/messages
  def create
    @message = current_user.messages.new(annonce: @annonce)
    @message.save
    redirect_to :back
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to :back
  end

  private

  def set_annonce
    @annonce = Annonce.find(params[:annonce_id])
  end
end

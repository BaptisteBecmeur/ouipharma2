class MessagesController < ApplicationController
  before_action :set_annonce, only: [:index, :create]

  def conversations
    # afficher toutes les conversation (avec les derniers messages de chaque annonce)
    # => group by
    # raise
  end

  def index
    @message = Message.new
    @messages = current_user.messages.where(annonce: @annonce)
  end

  # GET /annonces/:id/messages/new
  def new
    @message = Message.new
  end

  # POST /annonces/:id/messages
  def create
    @message = current_user.messages.new(message_params) #params[:message]
    @message.annonce = @annonce
    @message.save
    redirect_to annonce_messages_path()
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

  def message_params
    params.require(:message).permit(:content)
  end
end

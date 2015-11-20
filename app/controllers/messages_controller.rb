class MessagesController < ApplicationController
  before_action :set_annonce, only: [:index, :create]

  def conversations
    @message = current_user.messages.last
    @message.annonce = @annonce
    @messages.group_by { |message| message.annonce }
    # afficher toutes les conversations (avec les derniers messages de chaque annonce)
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
    # TODO : add conversation n:n table
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

class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "Created Message!"
      # redirect_to @message
      redirect_to messages_url
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.toggle(:visibility)
    if @message.update(visiblity_params)
      flash[:success] = "Message updated"
      # redirect_to @message
      redirect_to messages_url
    else
      render 'edit'
    end
  end

  def destroy
    Message.find(params[:id]).destroy
    flash[:success] = "Message deleted"
    redirect_to messages_url
  end

  private
    def message_params
      params.require(:message).permit(:user_id, :category_id, :name, :email, :subject, :text)
    end

    def visiblity_params
      params.permit(:visibility)
    end
end

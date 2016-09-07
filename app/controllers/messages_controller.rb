class MessagesController < ApplicationController
	def index
    @messages = Message.all
  end
  
  def new
    @butt = Message.new
  end
  
  def create
    @butt = Message.new(message_params)
    @butt.save 
    redirect_to '/messages'
  end  
  
  private
  	def message_params
      params.require(:message).permit(:content, :author)
    end
end

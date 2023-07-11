# app/controllers/api/messages_controller.rb
class Api::MessagesController < ApplicationController
  def index
    unless Message.exists?
      Message.create([
                       { content: 'Hi!' },
                       { content: 'Hello!' },
                       { content: 'Good day!' },
                       { content: 'Hello, how are you?' },
                       { content: 'Good to see you!' }
                     ])
    end

    @message = Message.order(Arel.sql('RANDOM()')).limit(1)
    render json: @message
  end
end

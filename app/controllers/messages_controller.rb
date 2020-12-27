# frozen_string_literal: true

class MessagesController < ApplicationController
  before_action :set_room

  def new
    @message = @room.messages.new
  end

  def create
    @message = @room.messages.new(message_params)
    @message.assign_attributes(created_by: current_user)

    respond_to do |format|
      if @message.save
        format.turbo_stream
        format.html { redirect_to @room }
      else
        format.turbo_stream
        format.html { render :new }
      end
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end

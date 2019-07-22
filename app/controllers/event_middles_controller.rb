class EventMiddlesController < ApplicationController
  def create
	  @event = Event.find(params[:event_middle][:attended_event_id])

    current_user.event_middles.create(attended_event_id: @event.id)
	  redirect_to @event
  end


end

class EventMiddlesController < ApplicationController
  def create
    EventMiddle.create!(attendee_id: current_user.id, attended_event_id: params[:id])
  end
end

class EventMiddlesController < ApplicationController
  def attend
    
    EventMiddle.create!(attendee_id: @user.id, attended_event_id: 1)
  end
end

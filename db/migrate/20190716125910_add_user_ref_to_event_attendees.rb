class AddUserRefToEventAttendees < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_attendees, :event_attendee, foreign_key: true
    add_reference :event_attendees, :attended_events_through, foreign_key: true
  end
end

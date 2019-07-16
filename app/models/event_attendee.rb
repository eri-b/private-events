class EventAttendee < ApplicationRecord
  belongs_to :event_attendee, class_name: "User"
  belongs_to :attended_events_through, class_name: "Event"
end

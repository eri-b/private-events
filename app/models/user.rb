class User < ApplicationRecord
  has_many :created_events, foreign_key: "creator_id", class_name: "Event"
  has_many :event_middles, foreign_key: :attendee_id
  has_many :attended_events, through: :event_middles

  def prev_events
    self.attended_events.where("date < ?", Date.today)
  end

  def upcoming_events
    self.attended_events.where("date >= ?", Date.today)
  end

end

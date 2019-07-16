class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :event_middles, foreign_key: :attended_event_id
    has_many :attendees, through: :event_middles

def self.past
  Event.all.where("date < ?", Date.today)
end

def self.upcoming
  Event.all.where("date >= ?", Date.today)
end

end

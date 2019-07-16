class AddForeignToEventMiddle < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_middles, :attendee, foreign_key: true
    add_reference :event_middles, :attended_event, foreign_key: true
  end
end

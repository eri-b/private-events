class ChangeThroughtTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :event_attendees, :event_attendance
  end
end

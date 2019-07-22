class CreateEventMiddles < ActiveRecord::Migration[5.2]
  def change
    create_table :event_middles do |t|

      t.timestamps
    end
  end
end

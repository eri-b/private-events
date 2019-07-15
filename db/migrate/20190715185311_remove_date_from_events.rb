class RemoveDateFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :date
    remove_column :events, :name
  end
end

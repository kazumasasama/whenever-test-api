class CreateAvailableTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :available_times do |t|
      t.date :date
      t.time :time
      t.boolean :available
      t.integer :event_id

      t.timestamps
    end
  end
end

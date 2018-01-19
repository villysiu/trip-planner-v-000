class CreateDailyItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_itineraries do |t|
      t.integer :day
      t.integer :attraction_id
      t.integer :trip_id

      t.timestamps
    end
  end
end

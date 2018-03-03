class AddDetailsToDailyItineraries < ActiveRecord::Migration[5.1]
  def change
    add_column :daily_itineraries, :accomodation_id, :integer
    add_column :daily_itineraries, :restautant_id, :integer
  end
end

class DailyItinerary < ApplicationRecord
  belongs_to :trip
  belongs_to :attraction
end

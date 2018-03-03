class DailyItinerary < ApplicationRecord
  belongs_to :trip
  belongs_to :attraction, optional: true

end

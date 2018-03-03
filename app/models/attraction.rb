class Attraction < ApplicationRecord
  #belongs_to :city
  #belongs_to :country

  has_many :daily_itineraries
  has_many :trips, through: :daily_itineraries
  belongs_to :type
end

class Trip < ApplicationRecord
  belongs_to :user
  has_many :daily_itineraries
  has_many :attractions, through: :daily_itineraries

end

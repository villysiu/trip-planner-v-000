# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'admin@admin.com', password: "password", password_confirmation: "password")
trip = Trip.create(title: 'Las Vegas', duration: '2 days', user_id: 1 )

trip.daily_itineraries.create([{ day: 3, attraction_id:6 },
  { day: 1, attraction_id:2 }, { day: 1, attraction_id:3 },
  { day: 2, attraction_id:2 }, { day: 2, attraction_id:3 }])

trip2 = Trip.create(title: 'Tokyo', duration: '2 days', user_id: 1 )
trip2.daily_itineraries.create([{ day: 1, attraction_id:1 },
  { day: 1, attraction_id:3 }, { day: 1, attraction_id:5 },
  { day: 2, attraction_id:3 }, { day: 2, attraction_id:5 }])

Type.create([{ name: 'Accomodation'}, { name: 'Restaurant'}, { name: 'Other Attraction'}])

Attraction.create!(name: 'Ichiban Ramen', city_id:2, country_id:2, type_id: 2)
Attraction.create([
{ name: 'Wynn', city_id:1, country_id:1, type_id: 1},
{ name: 'Caesar Palace', city_id:1, country_id:1, type_id: 1 },
{ name: 'Hilton Tokyo', city_id:2, country_id:2, type_id: 1 },
{ name: 'SW Steakhouse', city_id:1, country_id:1, type_id: 2},
{ name: 'Lakeside', city_id:1, country_id:1, type_id: 2 },
{ name: 'La Reve', city_id:1, country_id:1, type_id: 3} ])

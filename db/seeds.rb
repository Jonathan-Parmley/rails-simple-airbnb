# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

flat1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat2 = {
  name: 'Cosy flat central London',
  address: '11 Clifton Gardens London W9 1DT',
  description: 'Very central location, great for cycling',
  price_per_night: 125,
  number_of_guests: 2
}

flat3 = {
  name: 'Loft Space London',
  address: '12 Clifton Gardens London W9 1DT',
  description: 'A lovely winter feel for this spacious loft.',
  price_per_night: 210,
  number_of_guests: 6
}

flat4 = {
  name: 'Student digs',
  address: '13 Clifton Gardens London W9 1DT',
  description: 'Student digs for a short weekend',
  price_per_night: 35,
  number_of_guests: 1
}

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

[flat1, flat2, flat3, flat4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'

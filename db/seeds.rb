# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Place.create!(
  name: 'Starbucks',
  address: '719 E Valley Rd',
  city: 'Basalt, CO'
)
puts "Created #{Place.last.name} seed Place"
Place.create!(
  name: 'Dos Gringos',
  address: '588 Highway 133',
  city: 'Carbondale, CO'
  )
puts "Created #{Place.last.name} seed Place"

# Tracking locations
starbucks = Place.first
dos = Place.last

InternetSpeed.create!(
  place_id: starbucks.id,
  download_speed: 25.55,
  download_units: 'Mbps'
)
puts "Created Internet speed of #{download_speed} for #{starbucks.name}"
InternetSpeed.create!(
  place_id: starbucks.id,
  download_speed: 30.22,
  download_units: 'Mbps'
  )
puts "Created Internet speed of #{download_speed} for #{starbucks.name}"
InternetSpeed.create!(
  place_id: dos.id,
  download_speed: 55.55,
  download_units: 'Mbps'
  )
puts "Created Internet speed of #{download_speed} for #{dos.name}"

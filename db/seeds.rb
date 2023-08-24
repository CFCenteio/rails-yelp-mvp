# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom    = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 555, category: 'chinese' }
fire_place    = { name: "Fire Place", address: "Fire Realm", phone_number: 444, category: 'italian' }
water_room    = { name: "Water Room", address: "Water Realm", phone_number: 333, category: 'japanese' }
earth_palace    = { name: "Earth Palace", address: "Earth Realm", phone_number: 222, category: 'french' }
air_bistro    = { name: "Air Bistro", address: "Air Realm", phone_number: 111, category: 'belgian' }

[dishoom, fire_place, water_room, earth_palace, air_bistro].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

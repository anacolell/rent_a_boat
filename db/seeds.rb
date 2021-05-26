# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Cleaning database...'

Boat.destroy_all
User.destroy_all

puts 'Creating users...'

User.create!(first_name: 'Ana', email: 'ana@gmail.com', password: '123456')
User.create!(first_name: 'Britta', email: 'britta@gmail.com', password: '123456')
User.create!(first_name: 'Qendresa', email: 'qendresa@gmail.com', password: '123456')

puts "#{User.count} users created!"

puts 'Creating boats...'

10.times do
  boat = Boat.create!(
    price: rand(60..200),
    name: Faker::Games::SuperMario.character,
    location: Faker::Address.city,
    capacity: rand(2..10),
    size: rand(5..20),
    description: Faker::Lorem.paragraph,
    boat_type: ['sailboat', 'catamaran', 'motorboat', 'yacht', 'rib', 'canal boat'].sample,
    user: User.all.sample,
  )
  puts "#{boat.name} is created"
end

puts "#{Boat.count} boats created!"

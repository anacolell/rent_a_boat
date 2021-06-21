# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Cleaning database...'

Booking.destroy_all
Boat.destroy_all
User.destroy_all

puts 'Creating users...'

User.create!(first_name: 'Ana', email: 'ana@gmail.com', password: '123456')
User.create!(first_name: 'Britta', email: 'britta@gmail.com', password: '123456')
User.create!(first_name: 'Qendresa', email: 'qendresa@gmail.com', password: '123456')

puts "#{User.count} users created!"

# puts 'Creating boats...'

# 10.times do
#   boat = Boat.create!(
#     price: rand(60..200),
#     name: Faker::Games::SuperMario.character,
#     location: Faker::Address.city,
#     capacity: rand(2..10),
#     size: rand(5..20),
#     description: Faker::Lorem.paragraph,
#     boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
#     user: User.all.sample,
#   )
#   puts "#{boat.name} is created"
# end

# puts "#{Boat.count} boats created!"

file = URI.open('https://static.wixstatic.com/media/420204_f07b4bf2578942758550d87fc74247e7~mv2_d_3072_2302_s_2.jpg/v1/fill/w_620,h_375,al_c,q_80,usm_0.66_1.00_0.01/org_1b27a7e1e950c098_1558005910000-02_jp.webp')
boat1 = Boat.new(
    price: rand(60..200),
    name: "MERRY FISHER 795",
    location: "San Fransisco, CA, USA",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "The Merry Fisher 795 adopts a dynamic and rewarding design, both inside and out. All the innovations of the recent Merry Fisher 695 can be found on board, plus many more!",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )

["https://static.wixstatic.com/media/420204_f07b4bf2578942758550d87fc74247e7~mv2_d_3072_2302_s_2.jpg/v1/fill/w_620,h_375,al_c,q_80,usm_0.66_1.00_0.01/org_1b27a7e1e950c098_1558005910000-02_jp.webp", "https://media.istockphoto.com/photos/luxury-private-motor-yacht-sailing-at-sea-picture-id925066016?k=6&m=925066016&s=612x612&w=0&h=xOn5NsmN6-6ZJiittH4Q0-KfbHCgjbECPa9Dv0ued4U=", "https://www.princessyachts.com/media/10251/85my-flybridge-12.jpg?anchor=center&mode=crop&width=1120&heightratio=0.6666666666666666666666666667&format=jpg&slimmage=true&quality=80&rnd=132085331710000000"].each do |url|
  boat1.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat1.save!

file = URI.open('https://partners.yachtbooker.com/media/images/800x533/Oceanis_51_1_-5_1Cab-_rear_view.jpg')
boat2 = Boat.new(
    price: rand(60..200),
    name: "LEADER 10",
    location: "Miami, Florida, USA",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "The Leader 10 dazzles with its dynamic design that allows you free reign of the blue ocean: excellent handling and performance at sea; comfort onboard and an extremely bright interior.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )

["https://partners.yachtbooker.com/media/images/800x533/Oceanis_51_1_-5_1Cab-_rear_view.jpg", "https://www.kuonistores.co.uk/upload/inspiration/james/cruise-suite/pool-deck.jpg", "https://www.princessyachts.com/media/10251/85my-flybridge-12.jpg?anchor=center&mode=crop&width=1120&heightratio=0.6666666666666666666666666667&format=jpg&slimmage=true&quality=80&rnd=132085331710000000"].each do |url|
  boat2.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat2.save!

file = URI.open('https://static.wixstatic.com/media/420204_eae62e0b0b334257a68c66580649e775~mv2.jpg/v1/fill/w_620,h_375,al_c,q_80,usm_0.66_1.00_0.01/leader-10_d5afql4p.webp')
boat3 = Boat.new(
    price: rand(60..200),
    name: "Marina Estrella Four",
    location: "Nice, France",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "Quicksilver 675 Sundeck Activ is a boat created for maximum enjoyment on the sea. It is equipped with a Mercury VERADO 200HP outboard engine that will deliver you an amazing driving experience and fuel economy.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )

["https://static.wixstatic.com/media/420204_eae62e0b0b334257a68c66580649e775~mv2.jpg/v1/fill/w_620,h_375,al_c,q_80,usm_0.66_1.00_0.01/leader-10_d5afql4p.webp", "https://www.kuonistores.co.uk/upload/inspiration/james/cruise-suite/pool-deck.jpg", "https://www.princessyachts.com/media/10251/85my-flybridge-12.jpg?anchor=center&mode=crop&width=1120&heightratio=0.6666666666666666666666666667&format=jpg&slimmage=true&quality=80&rnd=132085331710000000"].each do |url|
  boat3.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat3.save!

file = URI.open('https://www.booking-manager.com/cbm/documents/1193304580000100000_Hanse_575_main.jpg')
boat4 = Boat.new(
    price: rand(60..200),
    name: "Viviella",
    location: "Sydney, Australia",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "Designed for your comfort, the helm affords precise control and maximum ease to benefit from the smooth, sporty hull. The boat owes its unique design to the Garroni Designers.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )

["https://www.booking-manager.com/cbm/documents/1193304580000100000_Hanse_575_main.jpg", "https://www.princessyachts.com/media/10251/85my-flybridge-12.jpg?anchor=center&mode=crop&width=1120&heightratio=0.6666666666666666666666666667&format=jpg&slimmage=true&quality=80&rnd=132085331710000000"].each do |url|
  boat4.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat4.save!

file = URI.open("https://oysteryachts.com/assets/Uploads/24-Oyster-565-55-Foot-Sailing-Yacht-Exterior__FillMaxWzk2MCw2NDBd.jpg")
boat5 = Boat.new(
    price: rand(60..200),
    name: "CRUISER 31",
    location: "Athens",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "Given her lineage, it is no surprise the CRUISER 31 is a joy to sail shorthanded or with crew. Designed for power, the standard pushbutton in-mast furling with a fractional-rigged sail plan make her easily manageable in all conditions.",
    boat_type: "Sailboat",
    user: User.all.sample,
  )
["https://oysteryachts.com/assets/Uploads/24-Oyster-565-55-Foot-Sailing-Yacht-Exterior__FillMaxWzk2MCw2NDBd.jpg", "https://oysteryachts.com/assets/Uploads/16-Oyster-565-55-Foot-Sailing-Yacht-Exterior__FillMaxWzk2MCw2NDBd.jpg", "https://oysteryachts.com/assets/Uploads/30-Oyster-565-55-Foot-Sailing-Yacht-Exterior__FillMaxWzk2MCw2NDBd.jpg"].each do |url|
  boat5.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat5.save!

file = URI.open('https://cdn.boatinternational.com/files/2021/02/1440f900-6555-11eb-867d-c1d6b000ca05-BLACK-WHITE-Superyacht-for-sale-charter-01.jpg')
boat6 = Boat.new(
    price: rand(60..200),
    name: "LEADER 10",
    location: "Stockholm",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "The Leader 10 dazzles with its dynamic design that allows you free reign of the blue ocean: excellent handling and performance at sea; comfort onboard and an extremely bright interior.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )
["https://cdn.boatinternational.com/files/2021/02/1440f900-6555-11eb-867d-c1d6b000ca05-BLACK-WHITE-Superyacht-for-sale-charter-01.jpg", "http://www.bavariayacht.com/upload/2018/0104/lunbo2-a46a8.jpg", "http://www.bavariayacht.com/upload/2018/0104/lunbo5-063b5.jpg"].each do |url|
  boat6.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat6.save!

file = URI.open('https://moranyachts.imgix.net/wp-content/uploads/Luxury-yacht-sales-brokerage-scaled.jpg?auto=format&fit=crop&fm=webp%26nbsp%3B2x&h=400&ixlib=php-3.1.0&w=720&s=d8697af45f516e13c04e4d18813420da')
boat7 = Boat.new(
    price: rand(60..200),
    name: "Saona 47 | Nocrala",
    location: "Germany",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "Sailing yacht - Bali Catspace for rent in France, Port de Bormes-les-Mimosas.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )
["https://moranyachts.imgix.net/wp-content/uploads/Luxury-yacht-sales-brokerage-scaled.jpg?auto=format&fit=crop&fm=webp%26nbsp%3B2x&h=400&ixlib=php-3.1.0&w=720&s=d8697af45f516e13c04e4d18813420da", "http://www.bavariayacht.com/upload/2018/0104/lunbo2-a46a8.jpg", "http://www.bavariayacht.com/upload/2018/0104/lunbo5-063b5.jpg"].each do |url|
  boat7.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat7.save!

file = URI.open('https://www.bavariayachts.com/fileadmin/_processed_/3/0/csm_bavaria-mb-rline-r40-highlights-teaser-swiper-r40coupe_8a44034dfd.jpg')
boat8 = Boat.new(
    price: rand(60..200),
    name: "Nautitech 46",
    location: "Patras",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "With its pure lines and an exceptionally modern design, the B.U.B.U 46 is nothing but seductive. She is the embodiment of state of the art technology and innovative solutions.",
    boat_type: 'Yacht',
    user: User.all.sample,
  )
["https://www.bavariayachts.com/fileadmin/_processed_/3/0/csm_bavaria-mb-rline-r40-highlights-teaser-swiper-r40coupe_8a44034dfd.jpg", "https://www.bavariayachts.com/fileadmin/_processed_/2/b/csm_bavaria-mb-rline-r55-interior-01_0cec4ecb81.jpg", "https://www.bavariayachts.com/fileadmin/_processed_/d/9/csm_bavaria-mb-rline-r55-exterior-07_6e3cd04e6d.jpg"].each do |url|
  boat8.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat8.save!

file = URI.open('https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/c3/e5.jpg')
boat9 = Boat.new(
    price: rand(60..200),
    name: "Lagoon 52F",
    location: "France",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "The Leader 10 dazzles with its dynamic design that allows you free reign of the blue ocean: excellent handling and performance at sea; comfort onboard and an extremely bright interior.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )
["https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/c3/e5.jpg", "http://www.bavariayacht.com/upload/2018/0328/lunbo2.jpg", "http://www.bavariayacht.com/upload/2018/0104/lunbo5.jpg"].each do |url|
  boat9.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat9.save!

file = URI.open('https://www.ferretti-yachts.com/uploadB2B/Models/Images/Main/Ferretti/medium/44389.jpg')
boat10 = Boat.new(
    price: rand(60..200),
    name: "Nautitech 46 Fly",
    location: "Los Angeles",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "Designed for your comfort, the helm affords precise control and maximum ease to benefit from the smooth, sporty hull. The boat owes its unique design to the Garroni Designers.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )
["https://www.ferretti-yachts.com/uploadB2B/Models/Images/Main/Ferretti/medium/44389.jpg", "http://www.bavariayacht.com/upload/2018/0328/lunbotu1-5b1bf.jpg", "http://www.bavariayacht.com/upload/2018/0328/lunbotu5.jpg"].each do |url|
  boat10.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat10.save!

file = URI.open('https://robbreport.com/wp-content/uploads/2019/07/adastra-1-courtesy-jochen-manz_orion-shuttleworth.jpg?w=1000')
boat11 = Boat.new(
    price: rand(60..200),
    name: "Marbella Cruise",
    location: "Gothenburg",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "Sailing yacht - Hanse 575 for rent in Spain, La Lonja Marina Charter.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )
["https://robbreport.com/wp-content/uploads/2019/07/adastra-1-courtesy-jochen-manz_orion-shuttleworth.jpg?w=1000", "http://www.bavariayacht.com/upload/2018/0104/banner3.jpg", "http://www.bavariayacht.com/upload/2018/0104/banner4.jpg"].each do |url|
  boat11.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat11.save!

file = URI.open('https://images.lucentcms.com/iyc_website/2020/12/5fe9f298d7de6-tatiana-yacht-iyc-profile723-1.jpg')
boat12 = Boat.new(
    price: rand(60..200),
    name: "Lily ",
    location: "Italy",
    capacity: rand(2..10),
    size: rand(5..20),
    description: "The co-pilot has his/her own navigation seating, which provides 2 seats facing the sea and is set up by simply tilting the back.",
    boat_type: ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat'].sample,
    user: User.all.sample,
  )
["https://images.lucentcms.com/iyc_website/2020/12/5fe9f298d7de6-tatiana-yacht-iyc-profile723-1.jpg", "http://www.bavariayacht.com/upload/2018/0104/lunbo1-5dc9f.jpg", "http://www.bavariayacht.com/upload/2018/0328/lunbo1.jpg"].each do |url|
  boat12.photos.attach(io: URI.open(url), filename: 'some_name', content_type: '')
end
boat12.save!



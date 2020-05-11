require 'faker'

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    "#{Faker::Games::Pokemon.location}'s #{Faker::Games::Pokemon.name} #{Faker::Restaurant.type}",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  rand(0..5)
  )
  restaurant.save!
end
puts 'Finished!'

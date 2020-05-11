require 'faker'

100.times do
  Restaurant.create(
    name: "#{Faker::Movies::StarWars.character}'s #{Faker::Restaurant.name}",
    address: Faker::Movies::StarWars.planet,
    type_of_food: Faker::Restaurant.type,
    rating: rand(0..5)
  )
end

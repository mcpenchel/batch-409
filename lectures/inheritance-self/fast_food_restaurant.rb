require_relative "restaurant"

class FastFoodRestaurant < Restaurant
  attr_reader :prep_time

  # Fast Food Restaurant initialize
  def initialize(name, city, prep_time)
    super(name, "Fast Food", city)

    @prep_time = prep_time
  end
end

# We inherit all the methods from the parent class
# Which includes initialize, attr_readers, attr_writers
# and attr_accessors

burger_king = FastFoodRestaurant.new("BK", "RJ", 15)
puts burger_king.name
puts burger_king.category
puts burger_king.city
puts burger_king.prep_time

burger_king.add_reservation("Diogo")

burger_king.clients.each do |client|
  puts "The client #{client} loves good burgers"
end

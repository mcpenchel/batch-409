require_relative "restaurant"
require_relative "chef"

require "byebug"

class StarRestaurant < Restaurant
  attr_reader :stars, :chef

  def initialize(name, city, stars, name_of_chef, specialty_of_chef)
    super(name, "Fancy", city)

    @stars = stars

    @chef = Chef.new(name_of_chef, specialty_of_chef, self)
  end

  def add_reservation(client)
    super(client)

    # self => the object on which the method was called,
    # as this is an instance method

    puts "Please wait on the bar, we'll get back to you soon."
  end

  def self.welcome
    # self => is the class itself, Restaurant,
    # as this is a class method
    "I am pretty fancy, you're lucky to be here!"
  end

end

marius = StarRestaurant.new("Marius Crustaceos", "Rio", 5, "Gabriel", "Seafood")
marius.add_reservation("Sophie")
puts marius.chef.name
puts marius.chef.specialty
puts marius.chef.brag_about_restaurant

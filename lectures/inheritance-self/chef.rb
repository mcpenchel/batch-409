class Chef
  attr_accessor :name, :specialty, :restaurant

  def initialize(name, specialty, restaurant)
    @name = name
    @specialty = specialty
    @restaurant = restaurant
  end

  def brag_about_restaurant
    "I work at #{@restaurant.name}, which is #{@restaurant.stars} stars,
    located in #{@restaurant.city}."
  end
end



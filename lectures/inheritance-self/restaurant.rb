# restaurant.rb
class Restaurant
  attr_reader :clients, :name, :city
  attr_accessor :category

  def initialize(name, category, city)
    # instance variables -> data (attribute)
    @category = category
    @clients = []

    @city = city
    @name = name
  end

  def self.list_of_categories
    ["Fast Food", "Fancy", "Japanese", "Churrasco"]
  end

  def self.regular_price_for(city)
    case city
    when "Rio de Janeiro"
      20
    when "Sao Paulo"
      40
    when "London"
      100
    end
  end

  def add_reservation(client)
    @clients << client
  end
end

mc_donalds = Restaurant.new("Mc Donalds", "Fast food", "Rio")
mc_donalds.add_reservation("Nicole")
puts Restaurant.list_of_categories
puts Restaurant.regular_price_for("Rio de Janeiro")

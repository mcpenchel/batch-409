class Animal

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    ["Nematode", "Lophotrochozoa", "Deuterostomia", "Arthropoda"]
  end

  def eat_food(the_food)
    "#{@name} eats a #{the_food}"
  end

end

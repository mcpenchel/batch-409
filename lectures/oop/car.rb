class Car
  attr_accessor :color
  attr_reader :brand, :year_of_manufacture

  def initialize(color, brand, year, km)
    @engine_started = false
    @brand = brand
    @color = color
    @year_of_manufacture = year
  end

  def selling_description_advertisement
    "A #{brand} of year #{year_of_manufacture}, painted in #{color}"
  end

  def engine_started?
    @engine_started
  end

  def start_engine
    start_fuel_pump
  end

  private

  def start_fuel_pump
    @engine_started = true
  end

end

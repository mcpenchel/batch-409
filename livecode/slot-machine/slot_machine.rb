class SlotMachine
  def initialize
    @rules = {
      "Joker"  => 50,
      "Star"   => 40,
      "Bell"   => 30,
      "Seven"  => 20,
      "Cherry" => 10
    }
  end

  # If we have 3 repeated elements in the array
  #   return the value of that key of the hash
  # Elsif we have 2 repeated elements in the array
  #   If the other one is the joker
  #     return the value / 2 of that key of the hash
  #   Else
  #     return 0
  # Else
  #   return 0
  def score(reels)
    if reels.uniq.size == 1
      return @rules[reels.first]
    elsif reels.uniq.size == 2 && reels.include?("Joker")
      if reels.count {|e| e == "Joker" } == 2
        return @rules["Joker"] / 2
      else
        key = reels.reject {|e| e == "Joker"}.first
        return @rules[key] / 2
      end
    else
      return 0
    end
  end
end

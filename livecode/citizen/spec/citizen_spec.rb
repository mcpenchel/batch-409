require_relative "../citizen"

describe Citizen do
  describe '#can_vote?' do
    it "returns true if the citizen has age >= 18" do
      citizen = Citizen.new("Sophie", "Evans", 18)

      actual = citizen.can_vote?
      expected = true

      expect(actual).to eq(expected)
    end

    it "returns false if the citizen has age < 18" do
      citizen = Citizen.new("Matt", "Penchel", 17)

      actual = citizen.can_vote?
      expected = false

      expect(actual).to eq(expected)
    end
  end

  describe '#full_name' do
    it "returns the correct concatenation of first_name and last_name" do
      citizen = Citizen.new("Leo", "Figueira", 21)

      actual = citizen.full_name
      expected = "Leo Figueira"

      expect(actual).to eq(expected)
    end
  end
end

require 'rspec'
require_relative "../animal"

describe Animal do

  describe '.phyla' do
    it "returns the 4 phylas" do
      expected = [
        "Nematode", "Lophotrochozoa", "Deuterostomia", "Arthropoda"
      ]

      expect(Animal.phyla).to eq(expected)
    end
  end

  describe '#initialize' do
    it "belongs to the Animal class" do
      shark = Animal.new("Big White Shark")

      expect(shark).to be_an(Animal)
    end
  end

  describe '#name' do
    it "returns the name of the animal" do
      shark = Animal.new("Big White Shark")

      expect(shark.name).to eq("Big White Shark")
    end
  end

  describe '#eat_food' do
    it "returns the sentence of one animal eating the other" do
      orca = Animal.new("Free Willy")
      expected = "Free Willy eats a mosquito"

      expect(orca.eat_food("mosquito")).to eq(expected)
    end
  end
end

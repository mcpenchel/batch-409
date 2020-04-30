require 'rspec'
require_relative "../lion"

describe Lion do
  describe '#initialize' do
    it "belongs to the Lion class" do
      lion = Lion.new("Big Bad Lion")

      expect(lion).to be_a(Lion)
    end
  end

  describe '#talk' do
    it "returns the roar of the lion" do
      lion = Lion.new("Scar")

      expect(lion.talk).to eq("Scar roars")
    end
  end

  describe '#eat_food' do
    it "returns a more impressive message about the animal kingdom" do
      lion = Lion.new("Mufasa")

      expect(lion.eat_food('horse')).to eq('Mufasa eats a horse. Law of the Jungle!')
    end
  end
end

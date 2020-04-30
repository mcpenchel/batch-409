require 'rspec'
require_relative "../warthog"

describe Warthog do
  describe '#initialize' do
    it "belongs to the Warthog class" do
      warthog = Warthog.new("Big Bad Warthog")

      expect(warthog).to be_a(Warthog)
    end
  end

  describe '#talk' do
    it "returns the roar of the Warthog" do
      warthog = Warthog.new("Pumba")

      expect(warthog.talk).to eq("Pumba grunts")
    end
  end
end

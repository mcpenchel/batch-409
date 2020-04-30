require 'rspec'
require_relative "../meerkat"

describe Meerkat do
  describe '#initialize' do
    it "belongs to the Meerkat class" do
      meerkat = Meerkat.new("Big Bad Meerkat")

      expect(meerkat).to be_a(Meerkat)
    end
  end

  describe '#talk' do
    it "returns the roar of the Meerkat" do
      meerkat = Meerkat.new("Timon")

      expect(meerkat.talk).to eq("Timon barks")
    end
  end
end

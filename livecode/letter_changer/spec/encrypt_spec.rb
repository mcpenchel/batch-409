require 'rspec'
require_relative '../encrypt'

describe '#encrypt' do
  it "returns the correct encrypted string" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

    expect(actual).to eq(expected)
  end

  it "returns an empty string if provided an empty string" do
    actual = encrypt("")
    expected = ""

    expect(actual).to eq(expected)
  end
end

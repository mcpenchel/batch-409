require 'rspec'
require_relative '../frequencies.rb'

describe "#words_counter" do
  it "returns an empty hash if provided an empty string" do
    phrase = ""
    actual = words_counter(phrase)
    expected = {}

    expect(actual).to eq(expected)
  end

  it "counts how many times the word appears on a sentence" do
    phrase = "dog eats dog"
    actual = words_counter(phrase)
    expected = {
      "dog" => 2,
      "eats" => 1
    }

    expect(actual).to eq(expected)
  end
end

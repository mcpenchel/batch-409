require 'rspec'
require_relative '../acronymize'

describe '#make_acronym' do
  it 'returns an empty string if sent an empty string' do
    expected = ""

    expect(make_acronym("")).to eq(expected)
  end

  it 'returns the correct acronym' do
    expected = "NSFW"
    actual   = make_acronym("not safe for work")

    expect(actual).to eq(expected)
  end

  it 'returns the correct acronym' do
    expected = "AFK"
    actual   = make_acronym("away from keyboard")

    expect(actual).to eq(expected)
  end
end

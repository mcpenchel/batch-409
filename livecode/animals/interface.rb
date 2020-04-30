require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

array = []

array << Lion.new("Simba")
array << Lion.new("Nala")
array << Meerkat.new("Timon")
array << Warthog.new("Pumbaa")

array.each do |animal|
  puts animal.talk
end

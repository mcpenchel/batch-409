best_bands = [
  "Mastodon", "Black Sabbath", "Led Zeppelin", "Pink Floyd",
  "Megadeth"
]

#######
# Each => Returns the original array
#######

best_bands.each do |band|
  puts "The band #{band} is awesome!"
end

#######
# Each with index
#######

best_bands.each_with_index do |band, index|
  puts "#{index + 1} - #{band}"
end

#######
# Map => Returns a modified copy of the array
#######

new_modified_best_bands = best_bands.map do |band|
  "Super band: #{band}"
end

#######
# Count
#######

# teachers = ["Matt", "Marcel", "Andre"]
# teachers[0] -> "Matt"
# teachers[0][0] -> "M"

# str = "Matt"
# str[0] -> "M"

new_count = best_bands.count do |band|
  band[0] == "M"
end

# puts new_count => 2 (Mastodon and Megadeth meet the criterie)

#######
# Select
#######

filtered_down_bands = best_bands.select do |band|
  band[0] == "M"
end

puts filtered_down_bands

# Many others: https://ruby-doc.org/core-2.7.1/Enumerable.html

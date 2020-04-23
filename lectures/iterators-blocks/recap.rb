# Recap about arrays

best_bands = [
  "Mastodon", "Black Sabbath", "Led Zeppelin", "Pink Floyd"
]

# pushing a new element to the array
best_bands << "Coldplay"

# Recap about range

(0..10) # 0, 1, 2, ..., 10
(0...10) # 0, 1, 2, ..., 9

# Looping with for


# Mastodon, Led Zeppelin, Pink Floyd
#  0            1             2
# Size => 3
# Last index will always be size -1

for index in (0...best_bands.size)
  puts best_bands[index]
end

for band in best_bands
  puts band
end

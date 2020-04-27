require_relative "frequencies"

file = File.open("dummy.txt")
text = file.read

hash = words_counter(text)

puts hash.sort_by { |key, value| value }

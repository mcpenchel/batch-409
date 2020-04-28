require 'json'

filepath    = 'data/beers.json'

# READING

serialized_json = File.read(filepath)
beer_hash = JSON.parse(serialized_json)

beer_hash["title"] = "Bad Beers"

# WRITING

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beer_hash))
end

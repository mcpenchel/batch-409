require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.chucknorris.io/jokes/random'

serialized_json = open(url).read
chuck_hash = JSON.parse(serialized_json)

puts chuck_hash["value"]

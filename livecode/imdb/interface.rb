# 1) get all the first 5 links (scrape)
# 2) for each of them, we will visit
# and then we will get the particular information
# that we need (stars, director, year, etc..)
require "yaml"
require_relative "scraper.rb"

movies_url_array = fetch_movies_url

final_array = movies_url_array.map do |movie_url|
  scrape_movie(movie_url)
end

File.open("top_movies.yml", "wb") do |file|
  file.write(final_array.to_yaml)
end

require 'open-uri'
require 'nokogiri'
require 'byebug'

IMDB_TOP_URL = "https://www.imdb.com/chart/top"

def fetch_movies_url
  html_file = open(IMDB_TOP_URL).read
  document = Nokogiri::HTML(html_file)

  url_array = []

  document.search(".titleColumn a")[0..4].each do |element|
    url_array << "https://www.imdb.com#{element.attribute("href").value}"
  end

  url_array
end

def scrape_movie(url)
  html_file = open(url, "Accept-Language" => "en").read
  document = Nokogiri::HTML(html_file)

  movie_hash = {}

  movie_hash[:cast] = []
  movie_hash[:storyline] = document.search('.summary_text').first.text.strip

  document.search('.credit_summary_item')[2].search('a')[0..2].each do |element|
    movie_hash[:cast] << element.text.strip
  end

  movie_hash[:director] = document.search('.credit_summary_item a').first.text
  movie_hash[:year]  = document.search('#titleYear').first.text[1..-2].to_i
  movie_hash[:title] = document.search('.title_wrapper h1').text.split("(")[0].gsub(" ", "")

  movie_hash
end

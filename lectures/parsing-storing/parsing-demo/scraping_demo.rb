require 'open-uri'
require 'nokogiri'

recipe = "lasagna"
url = "https://www.bbcgoodfood.com/search/recipes?query=#{recipe}"

html_file = open(url).read
document = Nokogiri::HTML(html_file)

# I forgot the each there guys/girls, sorry!
# That was the problem.
# I was doing
# document.search('.teaser-item__title a') do |element|
# instead of
# document.search('.teaser-item__title a').each do |element|
# And when we search, we get all the occurrences of the
# specified selector.. So, search() returns an array.


document.search('.teaser-item__title a').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end

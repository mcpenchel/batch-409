require 'nokogiri'

filepath = "results.html"

html_content = File.open(filepath)

doc = Nokogiri::HTML(html_content)

doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
  puts element.text.strip
end

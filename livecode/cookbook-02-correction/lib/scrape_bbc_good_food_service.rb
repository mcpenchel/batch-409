require "open-uri"
require "nokogiri"
require_relative "recipe"

class ScrapeBbcGoodFoodService # or ScrapeMarmitonService
  def initialize(keyword)
    @keyword = keyword
  end

  def call
    array_of_recipes = []

    url = "https://www.bbcgoodfood.com/search/recipes?query=#{@keyword}"
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')

    doc.search('.node-recipe').first(5).each do |element|
      name = element.search('.teaser-item__title').text.strip
      description = element.search('.teaser-item__text-content').text.strip
      prep_time = element.search('.teaser-item__info-item--total-time').text.strip
      difficulty = element.search('.teaser-item__info-item--skill-level').text.strip

      recipe = Recipe.new(
        name: name,
        description: description,
        prep_time: prep_time,
        difficulty: difficulty
      )

      array_of_recipes << recipe
    end

    array_of_recipes
  end
end

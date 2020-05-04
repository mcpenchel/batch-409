require "byebug"
require "csv"
require_relative "recipe"

class Cookbook
  def initialize(csv_file)
    @recipes = [] # <--- <Recipe> instances
    @csv_file = csv_file
    load_csv
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    save_to_csv
  end

  def all
    return @recipes
  end

  def mark_as_done_recipe_at(index)
    @recipes[index].mark_as_done!

    save_to_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      # => "true"
      # => "false"

      @recipes << Recipe.new(
        name: row[0],
        description: row[1],
        prep_time: row[2],
        done: row[3] == "true",
        difficulty: row[4]
      )
    end
  end

  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.prep_time, recipe.done?, recipe.difficulty]
      end
    end
  end
end

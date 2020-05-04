require_relative "view"
require_relative "recipe"
require_relative "scrape_bbc_good_food_service"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # USER ACTIONS

  def list
    display_recipes
  end

  def create
    # 1. Ask user for a name (view)
    name = @view.ask_user_for("name")
    # 2. Ask user for a description (view)
    description = @view.ask_user_for("description")
    # 3. Create recipe (model)
    recipe = Recipe.new(name: name, description: description)
    # 4. Store in cookbook (repo)
    @cookbook.add_recipe(recipe)
    # 5. Display
    display_recipes
  end

  def destroy
    # 1. Display recipes
    display_recipes
    # 2. Ask user for index (view)
    index = @view.ask_user_for_index
    # 3. Remove from cookbook (repo)
    @cookbook.remove_recipe(index)
    # 4. Display
    display_recipes
  end

  def mark_as_done
    # 1. Display all the recipes
    display_recipes
    # 2. Ask the recipe index
    index = @view.ask_user_for_index
    # 3. Effectively mark it as done (Hmmmmmmm.....)
    @cookbook.mark_as_done_recipe_at(index)
  end

  def import
    # 1. Ask for the ingredient
    ingredient = @view.ask_user_for("ingredient")
    # 2. Display it to the user
    @view.import_message_for(ingredient)
    # 3. Get the array of recipes from the Scraper Service
    recipes_array = ScrapeBbcGoodFoodService.new(ingredient).call
    # 4. Display them
    @view.display(recipes_array, false)
    # 5. Ask for which one to import
    recipe_index = @view.ask_for_import_index
    # 6. Find that specific recipe in the array
    recipe = recipes_array[recipe_index]
    # 7. Add it to the cookbook
    @cookbook.add_recipe(recipe)
    # 8. Tell the user we're good!
    @view.import_final_message_for(recipe)
  end

  private

  def display_recipes
    # 1. Get recipes (repo)
    recipes = @cookbook.all
    # 2. Display recipes in the terminal (view)
    @view.display(recipes)
  end
end

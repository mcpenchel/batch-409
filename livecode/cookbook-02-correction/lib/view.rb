class View
  def display(recipes, show_description=true)
    recipes.each_with_index do |recipe, index|
      box = recipe.done? ? "[X]" : "[ ]"

      prep_time = recipe.prep_time != "" ? "(#{recipe.prep_time})" : ""

      msg = "#{index + 1}. #{box} #{recipe.difficulty} #{prep_time} #{recipe.name}"
      msg += ": #{recipe.description}" if show_description

      puts msg
    end
  end

  def import_final_message_for(recipe)
    puts "Importing \"#{recipe.name}\"..."
  end

  def ask_user_for(stuff)
    puts "#{stuff.capitalize}?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    print "> "
    return gets.chomp.to_i - 1
  end

  def ask_for_import_index
    puts "Which recipe would you like to import? (enter index)"
    return gets.chomp.to_i - 1
  end

  def import_message_for(ingredient)
    puts "Looking for \"#{ingredient}\" recipes on the Internet..."
  end
end

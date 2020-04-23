# each, map, select, reject, count, each_with_index
# ALL of them, inside their definitions, have yield somewhere


# Method that accepts a block without parameters

def timer
  starting_time = Time.now
  yield
  puts (Time.now - starting_time)
end

timer do
  puts "I'm doing something really important..."
  sleep(3)
  puts "I've finished doing something really important!"
end

timer { sleep(3) }

timer do
  a = (0..10000).to_a
  a.shuffle.sort.shuffle.sort.shuffle
end

# Method that accepts a block with parameters

# one parameter

def nice_greeting(name)
  capitalized_name = name.capitalize
  yield(capitalized_name)
end

nice_greeting("matheus") do |better_name|
  puts "Salutations to you, #{better_name}! Great morning!"
end

nice_greeting("nicole") do |better_name|
  puts "Salutations to you, #{better_name}! Great morning!"
end

nice_greeting do |better_name|
  puts "Salutations to you, #{better_name}! Great morning!"
end

# two parameters

def capitalize_names(fullname)
  capitalized_first_name = fullname.split.first.capitalize
  capitalized_second_name = fullname.split.last.capitalize
  yield(capitalized_first_name, capitalized_second_name)
end

capitalize_names("matheus penchel") do |f_name, l_name|
  puts "See you soon, #{f_name} #{l_name}!"
end

# you can send as many arguments as you want in the yield :)

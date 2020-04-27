require_relative "calculator"

user_answer = "Y"

while user_answer == "Y"
  puts "Enter a first number:"
  first_number = gets.chomp.to_i
  puts "Enter a second one:"
  second_number = gets.chomp.to_i
  puts "Choose operation [+][-][*][/]"
  operation = gets.chomp

  result = calculator(first_number, second_number, operation)

  puts result

  puts "Do you want to calculate again? [Y/N]"
  user_answer = gets.chomp
end

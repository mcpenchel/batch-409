# 1) Create an array with horse names inside and assign it
# to a variable (ex: horses = ["Garfield", "Poseidon", "Pink"] )
# 2) LOOP over the horses array, printing every horse name
# 3) Ask the user which horse he picks, and store his choice
# inside a variable
# 4) Randomly pick a horse from the array (.sample) and store
# it inside a variable as well
# 5) If computer's choice == user's choice
#       print that the user won 50 bucks!
#    Else
#       print that the user is unlucky and he lost!

horses = ["Poseidon", "Hades", "Zeus", "Artemis", "Hera"]

horses.each do |horse|
  puts horse
end

user_money = 100

while user_money > 0
  puts "What horse would you like to bet on?"
  user_choice = gets.chomp

  winning_horse = horses.sample

  if user_choice == winning_horse
    user_money += 50
    puts "You won 50 bucks! #{winning_horse} is the winner."
  else
    user_money -= 50
    puts "You are unlucky, you lost.. #{winning_horse} is the winner."
  end

  puts "You have: $ #{user_money}"
end

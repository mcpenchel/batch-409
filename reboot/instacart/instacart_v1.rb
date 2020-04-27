# 1) print "-------" and then "Welcome!" and then "--------"
# 2) build a hash with items and prices { "kiwi" => 1.25 }
# 3) build an array for the shopping cart
# 4) LOOP over keys and values of the hash to print them
# in a cool human readable way (ex: hash.each do |key, value|)
# 5) Start the While loop (condition => user_answer != 'quit')
#   5.1) Ask the user which item, and store it into a variable
#   5.2) If the variable is a key of the hash (hash.key?(variable))
#           we push the variable to the shopping cart array
#        Else
#           we puts "Sorry, we don't have that."
# 6) We puts the Bill (that needs to be calculated by iterating
# over the shopping cart array and checking the value of that
# key inside the hash)


puts "---------------------"
puts "Welcome to Instacart!"
puts "---------------------"

products = {
  "dragon meat" => 10,
  "kiwi" => 2.5,
  "cigar" => 25,
  "alcohol" => 1.75
}

cart = []

products.each do |key, value|
  puts "#{key} - #{value}$"
end

user_answer = ""

while user_answer != 'quit'
  puts "Which item do you want to buy? [quit to checkout]"
  user_answer = gets.chomp

  if products.key?(user_answer)
    cart << user_answer
  elsif user_answer != 'quit'
    puts "Sorry, we don't have that."
  end
end

total_bill = 0

cart.each do |item|
  total_bill += products[item]
end

puts "Your bill: #{total_bill}$"


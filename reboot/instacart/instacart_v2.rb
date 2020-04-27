############ VERSION 2
# Now our user can tell us how many of that item he wants to buy!!

puts "---------------------"
puts "Welcome to Instacart!"
puts "---------------------"

products = {
  "dragon meat" => 10,
  "kiwi" => 2.5,
  "cigar" => 25,
  "alcohol" => 1.75
}

# Now it's a hash as we need to store the qty as well
cart = {}

products.each do |key, value|
  puts "#{key} - #{value}$"
end

user_answer = ""

while user_answer != 'quit'
  puts "Which item do you want to buy? [quit to checkout]"
  user_answer = gets.chomp

  if products.key?(user_answer)
    puts "How many?"
    qty = gets.chomp.to_i

    if cart.key?(user_answer)
      # If we have that item in our cart,
      # we append the new qty to the existing one
      cart[user_answer] += qty
    else
      # If we don't have that item in our cart,
      # we create a new key-value pair for it
      cart[user_answer] = qty
    end
  elsif user_answer != 'quit'
    puts "Sorry, we don't have that."
  end
end

total_bill = 0

# Remember, cart is now a hash! So we loop with key and value
# Apart from that, key is the item itself, and value is the qty
cart.each do |key, value|
  # So, we get the price from the products hash by looking
  # at the value of that specific key..
  # And then we multiply by the qty, which is the value of
  # the cart hash
  item = key
  price = products[key]
  qty = value
  total_item_value = price * qty

  puts "#{key}: #{price} X #{qty} = #{total_item_value}$"
  total_bill += total_item_value
end

puts "Your bill: #{total_bill}$"


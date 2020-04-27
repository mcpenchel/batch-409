############ VERSION 3
# Now our shop has stock as well!

puts "---------------------"
puts "Welcome to Instacart!"
puts "---------------------"

# So now in our hash, for each item, we store the price
# and also the qty available.

products = {
  "dragon meat" => {
    price: 10,
    qty: 5
  },
  "kiwi" => {
    price: 2.5,
    qty: 10
  },
  "cigar" => {
    price: 25,
    qty: 5
  },
  "alcohol" => {
    price: 1.75,
    qty: 20
  }
}

# Now it's a hash as we need to store the qty as well
cart = {}

products.each do |key, value|
  puts "#{key} - #{value[:price]}$ (#{value[:qty]} available)"
end

user_answer = ""

while user_answer != 'quit'
  puts "Which item do you want to buy? [quit to checkout]"
  user_answer = gets.chomp

  if products.key?(user_answer)
    puts "How many?"
    qty = gets.chomp.to_i

    if products[user_answer][:qty] < qty
      # If the user is asking for more than what we have
      # in stock, we say we're sorry
      puts "Sorry, we only have #{products[user_answer][:qty]} available..."
    else
      if cart.key?(user_answer)
        # If we have that item in our cart,
        # we append the new qty to the existing one
        cart[user_answer] += qty
      else
        # If we don't have that item in our cart,
        # we create a new key-value pair for it
        cart[user_answer] = qty
      end

      # Remember to remove the qty added from the stock!
      products[user_answer][:qty] -= qty
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
  price = products[key][:price]
  qty = value
  total_item_value = price * qty

  puts "#{key}: #{price} X #{qty} = #{total_item_value}$"
  total_bill += total_item_value
end

puts "Your bill: #{total_bill}$"


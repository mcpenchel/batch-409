require 'open-uri'
require 'nokogiri'

puts "Welcome to the Christmas Gift List!"

user_action = ""

gift_list = {
  "Pikachu Doll" => true,
  "Bulbasaur Necklace" => false,
  "Voldemort pijamas" => false
}

while user_action != "quit"
  puts "What do you want to do? [idea|list|add|mark|delete|quit]"
  user_action = gets.chomp

  if user_action == "list"
    counter = 1
    gift_list.each do |key, value|
      bought_mark = value ? "[X]" : "[ ]"
      puts "#{counter} - #{bought_mark} #{key}"
      counter += 1
    end
  elsif user_action == "add"
    puts "What do you want to add?"
    new_gift = gets.chomp
    gift_list[new_gift] = false
  elsif user_action == "mark"
    puts "What item did you already receive as a gift? Provide the number."
    gift_index = gets.chomp.to_i

    counter = 1
    gift_list.each do |key, value|
      gift_list[key] = true if counter == gift_index
      counter += 1
    end
  elsif user_action == "delete"
    puts "What item you don't want anymore? Provide the number."
    gift_index = gets.chomp.to_i

    counter = 1
    gift_list.each do |key, value|
      gift_list.delete(key) if counter == gift_index
      counter += 1
    end
  elsif user_action == "quit"
    puts "Byebye!"
  elsif user_action == "idea"
    puts "What are you searching on Etsy?"
    article = gets.chomp

    # 1. We get the HTML page content thanks to open-uri
    html_content = open("https://www.etsy.com/search?q=#{article}").read
    # 2. We build a Nokogiri document from this file
    doc = Nokogiri::HTML(html_content)

    article_elements = []

    # 3. We search for the correct elements containing the items' title in our HTML doc
    doc.search('.v2-listing-card .v2-listing-card__info .text-body').each_with_index do |element, index|
      # 4. For each item found, we extract its title and print it
      article_elements << element.text.strip
      puts "#{index + 1} - #{element.text.strip}"
    end

    puts "Which one you want to add? Provide the index."
    article_index = gets.chomp.to_i - 1

    chosen_element = article_elements[article_index]

    gift_list[chosen_element] = false
    puts "#{chosen_element} added to your gift list."
  else
    puts "Invalid action, please try again."
  end
end

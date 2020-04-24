# Build the HTML tag method

def tag(tag_name, value, attributes = {})
  html_attrs = attributes.map do |key, value|
    " #{key}='#{value}'"
  end

  "<#{tag_name}#{html_attrs.join(' ')}>#{value}</#{tag_name}>"
end


puts tag("h1", "Hello world")
# => <h1>Hello world</h1>

puts tag("h1", "Hello world", { class: "bold" })
# => <h1 class='bold'>Hello world</h1>

puts tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

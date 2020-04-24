# Defining a hash

brazil = {
  "rio" => {
    "state" => "Rio de Janeiro",
    "climate" => "Hot as hell",
    "exercise" => "Run & Futvolei"
  },
  "sampa" => {
    "state" => "Sao Paulo",
    "climate" => "Grey and cold and strange",
    "exercise" => "Working"
  }
}

rio = {
  "state" => "Rio de Janeiro",
  "climate" => "Hot as hell",
  "exercise" => "Run & Futvolei"
}

# Reading keys

puts rio["climate"]
puts brazil["sampa"]["exercise"]

# Adding key/value

rio["best_football_team"] = "Botafogo"
brazil["rio"]["best_football_team"] = "Botafogo"

puts rio["best_football_team"]
puts brazil["rio"]["best_football_team"]

# Updating value

# hash = {
#   "teams" => ["Botafogo", "America-RJ"]
# }

# hash["teams"].delete_at(1)

rio["best_football_team"] = "America-RJ"
brazil["rio"]["best_football_team"] = "America-RJ"

# Deleting key/value

rio.delete("exercise")
brazil["rio"].delete("exercise")

puts rio["exercise"]
puts brazil["rio"]["exercise"]

# each

rio = {
  "state" => "Rio de Janeiro",
  "climate" => "Hot as hell",
  "exercise" => "Run & Futvolei"
}

rio.each do |key, value|
  puts "Rio's #{key} is #{value}"
end

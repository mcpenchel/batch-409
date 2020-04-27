
# What we have to do:

# 1) Open a file and extract the text from it

# 2) We have to analyze the text and count how many times
# every word appears

# 3) We have to return this information

# dog eats dog
# { "dog" => 2, "eats" => 1 }

# create an array with the phrase split into words
# hash = {}
# iterate over the array
#   - was this word already counted?
#   - if yes, increase the counter inside the hash
#     for that word
#   - if not, create a new key-value pair inside the
#     hash, with value 1
# return the hash

WORDS_TO_IGNORE = [
  "and", "for", "the", "to", "is", "a", "or"
]

def words_counter(text)
  words = text.split(" ")
  hash = {}

  words.each do |element| # word
    next if WORDS_TO_IGNORE.include?(element)

    if hash.key?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end

  hash
end

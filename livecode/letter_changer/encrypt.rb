# 1 - create an array with the alphabet
# 2 - transform the phrase into an array of characters
# 3 - iterate over the phrase's array
# 4 - IF it is inside the alphabet,
#     transform the letter by going 3 index to the left
#     ELSE keep it as it is
# 5 - concatenate the new array into a string
# 5 - return the string

def encrypt(phrase)
  phrase.upcase!
  alphabet = ('A'..'Z').to_a

  encrypted_phrase = phrase.split("").map do |character|
    if alphabet.include?(character)
      current_index = alphabet.index(character)
      new_index     = current_index - 3

      alphabet[new_index]
    else # not part of the alphabet
      character
    end
  end

  encrypted_phrase.join
end



# 3 letters left-shift
"THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
"QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

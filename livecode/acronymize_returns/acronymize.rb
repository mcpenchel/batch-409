def make_acronym(phrase)
  # 2nd version

  # return "" if phrase == ""
  # letter_array = phrase.split(" ").map { |word| word[0].upcase }
  # letter_array.reduce(:+)

  # 1st version
  letter_array = phrase.split(" ").map { |word| word[0].upcase }
  letter_array.join
end

students     = [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

students.each_with_index do |student, index|
  puts "#{student}, with #{student_ages[index]} years old"
end

# This SUCKS!!

students = [ ["Peter", 24], ["Mary", 25] ]

students.each do |student_array|
  puts "#{student_array[0]} is #{student_array[1]} years old"
end

# This SUCKS AS WELL! How can we improve it?

# Hash, a-haaaaaa, savior of the universe!
# (if you don't get the joke about the 'a-haaaaa',
# listen to the beginning of this song:
# https://www.youtube.com/watch?v=LfmrHTdXgK4 )

students = {
  "Peter" => 24,
  "Mary" => 25,
  "George" => 22,
  "Emma" => 20
}

teacher = {
  "Matheus" => {
    "age" => 30,
    "football team" => "Botafogo",
    "students" => students
  },
  "Andre" => {
    "age" => 26,
    "football team" => "He doesn't care",
    "students" => students
  }
}

puts teacher["Matheus"]["age"] # => 30
puts teacher["Andre"]["football team"] #=> "He doesn't care"

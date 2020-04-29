require 'byebug'

array = ["Matt", "Itamar", "Gisela", "Diogo", "Nicole", "Flavio"]

capitalized_students = array.map do |student|
  student.upcase
end

byebug


puts capitalized_students

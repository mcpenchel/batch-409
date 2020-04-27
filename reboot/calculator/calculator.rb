def calculator(x, y, operation)
  if operation == "+"
    result = x + y
  elsif operation == "-"
    result = x - y
  elsif operation == "*"
    result = x * y
  elsif operation == "/"
    result = x / y.to_f
  else
    result = "Invalid operation"
  end

  return result
end

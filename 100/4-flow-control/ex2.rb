def to_upper (string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts to_upper("hello world")
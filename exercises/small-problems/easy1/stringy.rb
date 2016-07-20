def stringy(number)
  string = []
  
  number.times do
    if string.length.even?
      string << '1'
    else
      string << '0'
    end
  end
  
  string.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
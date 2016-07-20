def rotate_rightmost_digits(number, digits)
  (number.to_s.chars[0..-digits] + rotate_array(number.to_s.chars[-digits..-1])).join.to_i
end

def rotate_array(array)
  array[1..array.size] + [array[0]]
end

p rotate_rightmost_digits(735291, 1) #== 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915  
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
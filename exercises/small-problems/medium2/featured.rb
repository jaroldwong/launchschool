def featured(number)
  featured_number = number
  
  loop do
    featured_number += 1
    break if featured_number.odd? && (featured_number % 7 == 0) && 
    (number.to_s.chars.uniq == number.to_s.chars)
  end
  
  featured_number
end

p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
p featured(999_999_987)
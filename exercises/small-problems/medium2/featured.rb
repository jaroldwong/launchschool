def featured(number)
  number += 1
  number += 1 until number.odd? && (number % 7 == 0)

  loop do
    return number if number.to_s.chars.uniq == number.to_s.chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
p featured(999_999_987)

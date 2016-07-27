require 'pry'

def letter_percentages(str)
  total_chars = str.size.to_f
  lowercase_chars = 0
  uppercase_chars = 0

  str.each_char do |char|
    lowercase_chars += 1 if ('a'..'z').include?(char)
    uppercase_chars += 1 if ('A'..'Z').include?(char)
  end

  lowercase_percentage =  (lowercase_chars / total_chars) * 100
  uppercase_percentage =  (uppercase_chars / total_chars) * 100
  neither_percentage = 100 - lowercase_percentage - uppercase_percentage

  { lowercase: lowercase_percentage, uppercase: uppercase_percentage,
    neither: neither_percentage}
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

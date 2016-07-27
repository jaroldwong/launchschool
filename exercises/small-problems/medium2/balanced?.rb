def balanced?(string)
  return false if string.count('(') != string.count(')')

  counter = 0

  string.each_char do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'
    return false if counter < 0
  end

  true
end


p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false

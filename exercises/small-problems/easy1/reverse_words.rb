def reverse_words(string)
  new_string = []
  
  string.split.each do |word|
    word.reverse! if word.length >= 5
    new_string << word
  end
  
  new_string.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
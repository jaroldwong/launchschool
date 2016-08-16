def count(arr)
  counter = 0
  arr.each do |value|
    counter += 1 if yield(value)
  end
  counter
end

def each_with_index(arr)
  index = 0
  arr.each do |item|
    yield(item, index)
    index += 1
  end
end

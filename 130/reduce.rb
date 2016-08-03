def reduce (array, default = 0)
    counter = 0
    acc = default
  
  while counter < array.size
    accumulator = yield(acc, array[counter])
    counter += 1
  end
  
  acc
end
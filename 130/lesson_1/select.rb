array = [1, 2, 3, 4, 5]

def select(array)
  counter = 0
  new_array = []
  
  while counter < array.size
    eval = yield(array[counter])
    new_array << array[counter] if eval
    counter += 1
  end
  
  new_array
end

p select(array) { |num| num.odd? }
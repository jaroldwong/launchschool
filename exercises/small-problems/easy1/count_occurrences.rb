vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  items = array.uniq

  items.each do |item|
    puts "#{item} => #{array.count(item)}"
  end
end

count_occurrences(vehicles)
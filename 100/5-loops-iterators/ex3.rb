# loops ex3

foods = ["burrito", "pizza", "hamburger", "hotdog", "chicken bake"]

foods.each_with_index do |food, index| 
  puts "#{index + 1}. #{food}"
end
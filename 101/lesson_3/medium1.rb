# Question 1

10.times { |num| puts (" " * num) + "The Flintstones Rock!" }

# Question 2

statement = "The Flintstones rock!"

# Question 3

puts "the value of 40 + 2 is " + (40 + 2)

# results in error because it's trying to concatenate a string with integer

puts "the value of 40 + 2 is " + (40 + 2).to_s #convert integer to string
puts "the value of 40 + 2 is #{(40+2)}" # string interpolation to evaluate the sum

# Question 4

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# p 1
# [2,3,4]
# p 3
# [3, 4]
#
# p 1
# [1, 2, 3]
# p 2
# [1, 2]


# Question 5

def factors(number)
  dividend = number
  divisors = []
  while dividend == 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors

  # number % dividend == 0 checks if the number is divisable with no remainder
  # returns the divisors array
end

# Question 6

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# << pushes the object into the end of the array and returns the original array
# + concatenates the two and returns a new array

# Question 7

limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# Question 8

def titleize(string)
  string.split(' ').map { |word| word.capitalize! }.join(' ')
end

# Question 9

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, details|
  case details["age"]
    when (0..17)
      details["age_group"] = "kid"
    when (18..64)
      details["age_group"] = "adult"
    else
      details["age_group"] = "senior"
  end
end

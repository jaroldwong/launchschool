puts "Welcome to Calculator!"

puts "What is the first number?"
num1 = gets.chomp.to_i

puts "What is the second number?"
num2 = gets.chomp.to_i

puts "What operation would you like to perform?"
operator = gets.chomp.to_s

if operator == "+"
  puts "The answer is #{num1 + num2}"
elsif operator == "-"
  puts "The answer is #{num1 - num2}"
elsif operator == "*"
  puts "The answer is #{num1 * num2}"
elsif operator == "/"
  puts "The answer is #{num1.to_f / num2.to_f}"
else
  puts "Invalid operator"
end

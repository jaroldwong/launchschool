# evaluate_num.rb

def eval_num(number)
  if number < 0
    puts "You can't enter a negative number!"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

def eval_num_case(num)
  case
  when num < 0
    puts "You can't enter a negative number!"
  when num <= 50
    puts "#{num} is between 0 and 50"
  when num <= 100
    puts "#{num} is between 51 and 100"
  end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

eval_num(number)
eval_num_case(number)
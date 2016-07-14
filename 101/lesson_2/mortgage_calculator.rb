puts "Welcome to Mortgage Calculator"

puts "What is your loan amount?"
amount = gets.chomp

puts "What is your interest rate?"
interest_rate = gets.chomp

puts "What is your loan duration in years?"
years = gets.chomp

annual_interest_rate = interest_rate.to_f / 100
monthly_interest_rate = annual_interest_rate / 12
months = years.to_i * 12

monthly_payment = amount.to_f *
                  (monthly_interest_rate /
                  (1 - (1 + monthly_interest_rate)**-months.to_i))

puts "Your monthly payment is: $#{monthly_payment}"

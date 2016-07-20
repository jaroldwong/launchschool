require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

prompt(MESSAGES["welcome"])

prompt("What is the first number?")
num1 = gets.chomp.to_i

prompt("What is the second number?")
num2 = gets.chomp.to_i

prompt("What operation would you like to perform?")
operator = gets.chomp.to_s

if operator == "+"
  prompt("The answer is #{num1 + num2}")
elsif operator == "-"
  prompt("The answer is #{num1 - num2}")
elsif operator == "*"
  prompt("The answer is #{num1 * num2}")
elsif operator == "/"
  prompt("The answer is #{num1.to_f / num2.to_f}")
else
  prompt("Invalid operator")
end
    
end

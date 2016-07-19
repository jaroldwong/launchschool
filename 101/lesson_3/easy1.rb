# Question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# 1
# 2
# 2
# 3 uniq is a non-destructive call and returns a new object

# Question 2

# != is not equals
# !user_name returns the opposite of boolean value
# uniq! is permanantely mutates the values of words
# ? is used in the ternary operator
# ? after something is often used in methods that returns true or false
# !! returns the boolean value of user_name

# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

# Question 4

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # removes 2 from array and returns 2
numbers.delete(1) # removes 1 from array and returns 1

# Question 5

(10..100).include?(42)

# Question 6

famous_words = "seven years ago..."

"Four score and " + famous_words
"Four score and " << famous_words

# Question 7

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep # 42

# Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

# Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.assoc("Barney")

# Question 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |name, index|
    flintstones_hash[name] = index
end
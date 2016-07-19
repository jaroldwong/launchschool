# Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?("Spot")
ages.has_key?("Spot")

# Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum_of_ages = ages.values.inject(:+)

# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! { |name, age| age < 100 }

# Question 4
munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize # "The munsters are creepy in a good way."
munsters_description.swapcase # "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.downcase # "the munsters are creepy in a good way."
munsters_description.upcase # "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# Question 5

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# Question 6

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

# Question 7

advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?('Dino')

# Question 8
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0, 2] == "Be" }

# Question 9
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones.map! { |name| name[0, 3] }
# Question 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 2
flintstones << "Dino"

# Question 3
flintstones.concat(["Dino", "Hoppy"])

# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))
# slice would return "Few things in life are as important " and leave advice untouched

# Question 5
statement = "The Flintstones Rock!"
statement.split('').count('t')

# Question 6
title = "Flintstone Family Members"
title.center(40)
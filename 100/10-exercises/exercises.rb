numbers = [1,2,3,4,5,6,7,8,9,10]

#1
numbers.each { |number| puts number }

#2
numbers.select { |number| number > 5 }.each { |number| puts number }

#3
new_array = numbers.select { |number| number % 2 != 0}
p new_array

#4
numbers << 11
p numbers

numbers.unshift(0)
p numbers

#5
numbers.pop
numbers << 3

#6
numbers.uniq!

#7
# Array is not indexed, whereas hash can be referenced by a key

#8
hash1 = {:key => 'value'}
hash2 = {key: 'value'}

#9
h = {a:1, b:2, c:3, d:4}

h[:b]
h[:e] = 5
h.delete_if { |k,v| v < 3.5 }

#10
hash_of_arr = { x: [0,1], y:[2,4] }
arr_of_hash = [{a: 1, b: 2}, {a: 1, b: 2}]

#11
# ruby-doc.org

#12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#13
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]

#14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts = {"Joe Smith" => {}}

fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s") }

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s", "w") }

#16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map{ |string| string.split }.flatten

#17
# Yes

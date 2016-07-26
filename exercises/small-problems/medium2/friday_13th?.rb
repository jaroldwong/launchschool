require 'date'

def friday_13th?(year)
  count = 0
  
  (1..12).each do |month|
    count += 1 if Time.new(year,month,13).friday?
  end
  
  count
end

puts friday_13th?(2015) #== 3
puts friday_13th?(1986) #== 1
def sum_square_difference(n)
  square_of_sum = ((1..n).inject(:+))**2
  sum_of_squares = (1..n).map { |i| i**2 }.inject(:+)

  square_of_sum - sum_of_squares
end

p sum_square_difference(3)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)

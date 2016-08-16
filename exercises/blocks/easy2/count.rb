def count(arr)
  total = 0

  arr.each { |e| total += 1 if yield(e) }

  total
end

count([1, 3, 6]) { |value| value.odd? } == 2
count([1, 3, 6]) { |value| value.even? } == 1
count([1, 3, 6]) { |value| value > 6 } == 0
count([1, 3, 6]) { |value| true } == 3
count([]) { |value| true } == 0
count([1, 3, 6]) { |value| value - 6 } == 3

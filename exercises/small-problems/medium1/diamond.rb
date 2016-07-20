def diamond(n)
  puts ""

  line = 1
  n.times do |i|
    puts ("*" * line).center(n)
    line = i + 3
  end
end

# diamond(1)

diamond(9)
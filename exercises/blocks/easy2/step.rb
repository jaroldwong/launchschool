def step(start_point, end_point, step)
  current_value = start_point

  while current_value <= end_point
    yield(current_value)
    current_value += step
  end
  current_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }

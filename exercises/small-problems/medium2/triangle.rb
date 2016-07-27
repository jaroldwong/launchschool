def triangle(side1, side2, side3)
  return :invalid if side1 + side2 + side3 != 180 || side1.zero? || side2.zero? || side3.zero?

  case
  when side1 > 90 || side2 > 90 || side3 > 90
    :obtuse
  when side1 < 90 && side2 < 90 && side2 < 90
    :acute
  when side1 == 90 || side2 == 90 || side3 == 90
    :right
  end
end

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10)
p triangle(0, 90, 90)
p triangle(50, 50, 50)

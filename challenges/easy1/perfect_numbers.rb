class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 0
    
    sum_of_factors = factors(number).reduce(&:+)

    case
    when sum_of_factors == number
      return "perfect"
    when sum_of_factors > number
      return "abundant"
    when sum_of_factors < number
      return "deficient"
    end
  end

  def self.factors(number)
    factors = []
    divisor = 1

    loop do
      factors << divisor if number % divisor == 0
      divisor += 1
      break if number == divisor
    end

    factors
  end
end

class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 0

    sum_of_factors = (1...number).select { |n| number % n == 0 }.reduce(&:+)

    case
      when sum_of_factors == number then "perfect"
      when sum_of_factors > number then "abundant"
      when sum_of_factors < number then "deficient"
    end
  end
end

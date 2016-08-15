class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    digits = @number.to_s.split('').map(&:to_i).reverse

    digits.each_with_index do |digit, idx|
      if idx.odd?
        if digit * 2 > 9
          digits[idx] = digit * 2 - 9
        else
          digits[idx] = digit * 2
        end
      end
    end

    digits.reverse
  end

  def checksum
    addends.reduce(&:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    base_number = number * 10

    if new(base_number).valid?
      base_number
    else
      check_digit = new(base_number).checksum % 10
      base_number + (10 - check_digit)
    end
  end
end

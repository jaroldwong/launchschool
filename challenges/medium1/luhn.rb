class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    digits = @number.to_s.split('').map(&:to_i)
    check_digit = digits.last

    if digits.size.odd?
      doubled = digits.each_with_index do |digit, idx|
        if idx.odd?
          if (digit * 2) > 9
            digits[idx] = digit * 2 - 9
          else
            digits[idx] = digit * 2
          end
        end
      end
    else
      doubled = digits.each_with_index do |digit, idx|
        if idx.even?
          if (digit * 2) > 9
            digits[idx] = digit * 2 - 9
          else
            digits[idx] = digit * 2
          end
        end
      end
    end

    doubled
  end

  def checksum
    self.addends.reduce(&:+)
  end

  def valid?
    return true if self.checksum % 10 == 0
    false
  end

  def self.create(number)
    digits = number.to_s.split('').map(&:to_i)
    digits.push(nil)

    (0..9).each do |check_digit|
      digits[-1] = check_digit
      break if new(digits.join.to_i).valid?
    end

    digits.join.to_i
  end
end

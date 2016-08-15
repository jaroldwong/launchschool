class SecretHandshake
  CODE = ['wink', 'double blink', 'close your eyes', 'jump', 'reverse'].freeze

  def initialize(input)
    @binary_num = input.to_s(2) if input.class == Fixnum
  end

  def commands
    handshake = []
    return handshake if @binary_num.nil?

    reversed_binary = @binary_num.reverse

    @binary_num.size.times do |idx|
      handshake << CODE[idx] if reversed_binary[idx] == "1"
    end

    if handshake.last == 'reverse'
      handshake.pop
      handshake.reverse
    else
      handshake
    end
  end
end

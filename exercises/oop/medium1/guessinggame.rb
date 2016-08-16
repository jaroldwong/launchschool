class GuessingGame
  def initialize(low_value, high_value)
    @range = low_value..high_value
    @random_number = rand(@range)
    @guesses_left = Math.log2(high_value - low_value + 1).to_i + 1
  end

  def play
    player_guess = 0

    loop do
      puts "You have #{@guesses_left} guesses remaining"
      loop do
        puts "Enter a number between #{@range.first} and #{@range.last}:"
        player_guess = gets.to_i
        break if (@range).include?(player_guess)
        puts "Invalid guess."
      end

      if player_guess > @random_number
        puts "Your guess is too high"
      elsif player_guess < @random_number
        puts "Your guess is too low"
      else
        puts "You win!"
        return
      end
      @guesses_left -= 1
      if @guesses_left == 0
        puts "You are out of guesses. You lose."
        return
      end
      puts
    end
  end
end

game = GuessingGame.new(501, 1500)
game.play

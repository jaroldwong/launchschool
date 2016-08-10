class GuessingGame
  def initialize
    @random_number = rand(1..100)
    @guesses_left = 7
  end
  
  def play
    player_guess = 0
    
    loop do  
      puts "You have #{@guesses_left} guesses remaining"
      loop do
        puts "Enter a number between 1 and 100:"
        player_guess = gets.to_i
        break if (1..100).include?(player_guess)
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

game = GuessingGame.new
game.play
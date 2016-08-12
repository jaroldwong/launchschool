class Scrabble
  VALUES = {
    %w(a e i o u l n r s t) => 1,
    %w(d g) => 2,
    %w(b c m p)=> 3,
    %w(f h v w y) => 4,
    %w(k) => 5,
    %w(j x) => 8,
    %w(q z) => 10
  }

  def initialize(word)
    @word = word.downcase
  end

  def score
    letters = @word.chars
  end
end

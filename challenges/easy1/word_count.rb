class Phrase
  def initialize(phrase)
    @words = phrase.scan(/\b[\w']+\b/).map(&:downcase)
    @result = {}
  end

  def word_count
    reset
    @words.each do |word|
      if @result.has_key?(word)
        @result[word] += 1
      else
        @result[word] = 1
      end
    end
    @result
  end

  def reset
    @result = {}
  end
end

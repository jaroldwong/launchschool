class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    line = []
    @message.size.times do
      line << '-'
    end
    
    '+-' + line.join() + '-+'
  end

  def empty_line
    line = []
    @message.size.times do 
      line << ' '
    end
    
    "| " + line.join() + " |"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner
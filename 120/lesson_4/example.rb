class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
  
  def to_s
    "I am a #{@type} cat"
  end
end

meowth = Cat.new('normal')
bleu = Cat.new('normal')
p Cat.cats_count

###

class Greeting
  def greet(string)
    puts string
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye
  def bye
    greet("Goodbye")
  end
end

###

class KrispyKreme
  attr_reader :filling_type, :glazing
  
  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end
  
  def to_s
    filling_string = self.filling_type ? self.filling_type : "Plain"
    glazing_string = self.glazing ? " with #{self.glazing}" : ''
    filling_string + glazing_string
  end
end

class SecretFile
  attr_reader :data

  def initialize(secret_data)
    @data = secret_data
  end
end

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end
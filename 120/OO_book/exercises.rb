class MyCar
  attr_accessor :color
  attr_reader :year
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end
  
  def speed_up
    @speed += 1
  end
  
  def brake
    @speed -= 1
  end
  
  def shut_off
    @speed = 0
  end
  
  def spray_paint(color)
    self.color = color
  end
  
  def self.mileage(gallons, miles)
    miles / gallons
  end
  
  def to_s
    "#{year} #{color} #{@model}"
  end
end


car = MyCar.new(2005, "Gold", "Camry")
puts car
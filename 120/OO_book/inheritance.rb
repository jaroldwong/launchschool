module Towable
  def tow
    puts "I can tow!"
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year
  
  @@total_vehicles = 0
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@total_vehicles += 1
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
  
  def self.total_vehicles
    "Total vehicles created: #{@@total_vehicles}"
  end
  
  private
  
  def self.age
    Time.now.year - year
  end
end

class MyCar < Vehicle
  @NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable
  
  @NUMBER_OF_DOORS = 2
end
require 'pry'

class CircularQueue
  def initialize(buffer_size)
    @buffer_size = buffer_size
    @queue = [nil] * buffer_size
    @last_position = 0
  end
  
  def enqueue(value)
    if @last_position == @buffer_size
      @queue.shift
      @queue << value
      @last_position -= 1
    end
    
    # if @last_position < 0
    #   @last_position = 0
    # end
    
    @queue[@last_position] = value
    @last_position += 1
  end
  
  def dequeue
    oldest_obj = @queue.shift
    @last_position -= 1 unless @last_position == 0
    @queue << nil if @queue.size < @buffer_size
    oldest_obj
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
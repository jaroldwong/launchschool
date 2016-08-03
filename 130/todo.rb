require 'pry'

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(obj)
    if obj.class == Todo
      @todos << obj
    else
      raise TypeError, "Can only add Todo objects"
    end
  end
  
  def <<(obj)
    self.add(obj)
  end
  
  def size
    @todos.size
  end
  
  def first
    @todos.first
  end
  
  def last
    @todos.last
  end
  
  def shift
    @todos.shift
  end
  
  def pop
    @todos.pop
  end
  
  def done?
    @todos.all? { |todo| todo.done? }
  end
  
  def item_at(idx)
    if idx == nil
      raise ArgumentError
    elsif idx > @todos.size
      raise IndexError
    else
      @todos[idx]
    end
  end
  
  def mark_done_at(idx)
    item_at(idx).done!q
  end
    
  def mark_undone_at(idx)
    item_at(idx).undone!
  end
 
  def done!
    @todos.each_index do |idx|
      mark_done_at(idx)
    end
  end
  
  def remove_at(idx)
    @todos.delete(item_at(idx))
  end

  def to_s
    text = "---- #{title} ----\n"
    text << @todos.map(&:to_s).join("\n")
    text
  end
  
  def to_a
    @todos
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
list.add(todo3)                 # adds todo3 to end of list, returns list
list << todo3

binding.pry
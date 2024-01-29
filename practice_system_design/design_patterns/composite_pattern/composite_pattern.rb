# Component
class Component
    def operation
      raise NotImplementedError, "This method must be implemented by subclasses"
    end
  end
  
  # Leaf
  class Leaf < Component
    def operation
      "Leaf"
    end
  end
  
  # Composite
  class Composite < Component
    def initialize
      @children = []
    end
  
    def add(component)
      @children << component
    end
  
    def remove(component)
      @children.delete(component)
    end
  
    def operation
      result = "Composite ["
      result += @children.map(&:operation).join(', ')
      result += "]"
      result
    end
  end
  
  # Client
  leaf1 = Leaf.new
  leaf2 = Leaf.new
  leaf3 = Leaf.new
  
  composite1 = Composite.new
  composite1.add(leaf1)
  composite1.add(leaf2)
  
  composite2 = Composite.new
  composite2.add(leaf3)
  
  composite = Composite.new
  composite.add(composite1)
  composite.add(composite2)
  
  puts "Result: #{composite.operation}"
  
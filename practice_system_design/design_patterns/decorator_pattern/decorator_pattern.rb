# Component Interface
class Coffee
    def cost
      raise NotImplementedError, "This method must be implemented by subclasses"
    end
  
    def description
      raise NotImplementedError, "This method must be implemented by subclasses"
    end
  end
  
  # Concrete Component
  class SimpleCoffee < Coffee
    def cost
      5 # Base cost of a simple coffee
    end
  
    def description
      "Simple Coffee"
    end
  end
  
  # Decorator Base Class
  class CoffeeDecorator < Coffee
    def initialize(coffee)
      @coffee = coffee
      puts @coffee
      puts "---------------------"
    end
  
    def cost
      @coffee.cost
    end
  
    def description
      @coffee.description
    end
  end
  
  # Concrete Decorators
  class MilkDecorator < CoffeeDecorator
    def cost
      @coffee.cost + 2
    end
  
    def description
      @coffee.description + ", Milk"
    end
  end
  
  class SugarDecorator < CoffeeDecorator
    def cost
      @coffee.cost + 1
    end
  
    def description
      @coffee.description + ", Sugar"
    end
  end
  
  # Client
  simple_coffee = SimpleCoffee.new
  puts "Cost: $#{simple_coffee.cost}, Description: #{simple_coffee.description}"
  
  milk_coffee = MilkDecorator.new(simple_coffee)
  puts "Cost: $#{milk_coffee}
  
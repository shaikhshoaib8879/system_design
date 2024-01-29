# Strategy Interface
class DiscountStrategy
    def apply_discount(amount)
      raise NotImplementedError, "This method must be implemented by subclasses"
    end
  end
  
  # Concrete Strategies
  class NoDiscountStrategy < DiscountStrategy
    def apply_discount(amount)
      amount
    end
  end
  
  class TenPercentDiscountStrategy < DiscountStrategy
    def apply_discount(amount)
      amount - (amount * 0.10)
    end
  end
  
  class TwentyPercentDiscountStrategy < DiscountStrategy
    def apply_discount(amount)
      amount - (amount * 0.20)
    end
  end
  
  # Context
  class BillingContext
    attr_accessor :discount_strategy
  
    def initialize(discount_strategy)
      @discount_strategy = discount_strategy
    end
  
    def calculate_total(amount)
      discounted_amount = @discount_strategy.apply_discount(amount)
      puts "Total amount after discount: $#{discounted_amount}"
    end
  end
  
  # Client
  no_discount_strategy = NoDiscountStrategy.new
  ten_percent_discount_strategy = TenPercentDiscountStrategy.new
  twenty_percent_discount_strategy = TwentyPercentDiscountStrategy.new
  
  # Example 1: No Discount
  context_no_discount = BillingContext.new(no_discount_strategy)
  context_no_discount.calculate_total(100)
  
  puts "\n---------------------\n"
  
  # Example 2: 10% Discount
  context_ten_percent = BillingContext.new(ten_percent_discount_strategy)
  context_ten_percent.calculate_total(100)
  
  puts "\n---------------------\n"
  
  # Example 3: 20% Discount
  context_twenty_percent = BillingContext.new(twenty_percent_discount_strategy)
  context_twenty_percent.calculate_total(100)


#   In this example:

# Animal is the product interface, defining the method speak.
# Dog and Cat are concrete products that implement the Animal interface.
# AnimalFactory is the factory interface with a method create_animal.
# DogFactory and CatFactory are concrete factories that create instances of Dog and Cat, respectively.
# The client code demonstrates how to use the factories to create different types of animals. By doing this, the client code is decoupled from the specific classes of objects it creates, allowing for easy extension and flexibility.

# This example showcases the Factory Pattern's ability to encapsulate object creation, making it possible to create families of related objects without specifying their concrete classes.
  

class Pizza
  def cost 
  end

  def description
  end
end

class BasePizza < Pizza
  def cost
    10
  end  

  def description
    "Base Pizza"
  end
end

class PizzaDecorator < Pizza
  def initialize(pizza)
    @pizza = pizza
  end

  def cost
    @pizza.cost
  end

  def description
    @pizza.desciption
  end
end

class VegetableDecorator <  PizzaDecorator
  def cost
    @pizza.cost + 3
  end

  def description
    @pizza.description + ", vegieesss topping" 
  end
end

class MeatDecorator < PizzaDecorator
  def cost
    @pizza.cost + 5
  end

  def description
    @pizza.desciption + ", meat topping"
  end
end

pizza = BasePizza.new
puts "Cost: $#{pizza.cost}, Description: #{pizza.description}"
puts pizza.description

vegiee_pizza = VegetableDecorator.new(pizza)
puts "Cost: $#{vegiee_pizza.cost}, Description: #{vegiee_pizza.description}"
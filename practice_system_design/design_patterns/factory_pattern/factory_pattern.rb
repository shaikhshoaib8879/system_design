# Product Interface
class Animal
    def speak
      raise NotImplementedError, "This method must be implemented by subclasses"
    end
  end
  
  # Concrete Products
  class Dog < Animal
    def speak
      "Woof!"
    end
  end
  
  class Cat < Animal
    def speak
      "Meow!"
    end
  end
  
  # Factory Interface
  class AnimalFactory
    def create_animal
      raise NotImplementedError, "This method must be implemented by subclasses"
    end
  end
  
  # Concrete Factories
  class DogFactory < AnimalFactory
    def create_animal
      Dog.new
    end
  end
  
  class CatFactory < AnimalFactory
    def create_animal
      Cat.new
    end
  end
  
  # Client
  dog_factory = DogFactory.new
  dog = dog_factory.create_animal
  puts "Dog says: #{dog.speak}"
  
  cat_factory = CatFactory.new
  cat = cat_factory.create_animal
  puts "Cat says: #{cat.speak}"
  
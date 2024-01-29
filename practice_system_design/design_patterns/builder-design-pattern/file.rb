
  
  # # Client
  # gaming_builder = GamingComputerBuilder.new
  # office_builder = OfficeComputerBuilder.new
  
  # director = ComputerDirector.new
  
  # # Construct and display a Gaming Computer
  # director.construct(gaming_builder)
  # gaming_computer = gaming_builder.get_computer
  # gaming_computer.display
  
  # puts "\n---------------------\n"
  
  # # Construct and display an Office Computer
  # director.construct(office_builder)
  # office_computer = office_builder.get_computer
  # office_computer.display

  # Product
class Computer
  attr_accessor :cpu, :memory, :storage, :graphics_card

  def initialize
    @cpu = nil
    @memory = nil
    @storage = nil
    @graphics_card = nil
  end

  def display
    puts "Computer Configuration:"
    puts "CPU: #{@cpu}"
    puts "Memory: #{@memory}"
    puts "Storage: #{@storage}"
    puts "Graphics Card: #{@graphics_card}"
  end
end

# Builder Interface
class ComputerBuilder
  def initialize
    @computer = Computer.new
  end

  def build_cpu
    raise NotImplementedError, "This method must be implemented by subclasses"
  end

  def build_memory
    raise NotImplementedError, "This method must be implemented by subclasses"
  end

  def build_storage
    raise NotImplementedError, "This method must be implemented by subclasses"
  end

  def build_graphics_card
    raise NotImplementedError, "This method must be implemented by subclasses"
  end

  def get_computer
    @computer
  end
end

# Concrete Builder for Gaming Computers
class GamingComputerBuilder < ComputerBuilder
  def build_cpu
    @computer.cpu = "Intel i9"
  end

  def build_memory
    @computer.memory = "32GB DDR4"
  end

  def build_storage
    @computer.storage = "1TB SSD"
  end

  def build_graphics_card
    @computer.graphics_card = "NVIDIA RTX 3080"
  end
end

# Concrete Builder for Office Computers
class OfficeComputerBuilder < ComputerBuilder
  def build_cpu
    @computer.cpu = "Intel i5"
  end

  def build_memory
    @computer.memory = "16GB DDR4"
  end

  def build_storage
    @computer.storage = "500GB HDD"
  end

  def build_graphics_card
    # Office computers may not have a dedicated graphics card
    @computer.graphics_card = "Integrated Graphics"
  end
end

# Director
class ComputerDirector
  def construct(builder)
    builder.build_cpu
    builder.build_memory
    builder.build_storage
    builder.build_graphics_card
  end
end

# Client
gaming_builder = GamingComputerBuilder.new
office_builder = OfficeComputerBuilder.new

director = ComputerDirector.new

# Construct and display a Gaming Computer
puts director.construct(gaming_builder)
gaming_computer = gaming_builder.get_computer
puts gaming_computer.inspect
gaming_computer.display

puts "\n---------------------\n"

# Construct and display an Office Computer
director.construct(office_builder)
office_computer = office_builder.get_computer
office_computer.display

  
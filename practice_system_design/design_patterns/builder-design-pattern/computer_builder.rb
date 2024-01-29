
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

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
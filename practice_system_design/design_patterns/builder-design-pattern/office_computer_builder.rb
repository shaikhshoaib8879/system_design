
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
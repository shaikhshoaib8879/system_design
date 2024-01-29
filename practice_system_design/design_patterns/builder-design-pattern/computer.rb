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
  
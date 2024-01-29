# Handler Interface
class Handler
    attr_accessor :successor
  
    def handle_request(request)
      raise NotImplementedError, "This method must be implemented by subclasses"
    end
  end
  
  # Concrete Handlers
  class ConcreteHandlerA < Handler
    def handle_request(request)
      if request == 'A'
        puts "Handler A handles the request."
      elsif successor
        successor.handle_request(request)
      else
        puts "Handler A can't handle the request."
      end
    end
  end
  
  class ConcreteHandlerB < Handler
    def handle_request(request)
      if request == 'B'
        puts "Handler B handles the request."
      elsif successor
        successor.handle_request(request)
      else
        puts "Handler B can't handle the request."
      end
    end
  end
  
  class ConcreteHandlerC < Handler
    def handle_request(request)
      if request == 'C'
        puts "Handler C handles the request."
      elsif successor
        successor.handle_request(request)
      else
        puts "Handler C can't handle the request."
      end
    end
  end
  
  # Client
  handler_a = ConcreteHandlerA.new
  handler_b = ConcreteHandlerB.new
  handler_c = ConcreteHandlerC.new
  
  # Set up the chain of responsibility
  handler_a.successor = handler_b
  handler_b.successor = handler_c
  
  # Client sends requests
  handler_a.handle_request('A')  # Handler A handles the request.
  handler_a.handle_request('B')  # Handler B handles the request.
  handler_a.handle_request('C')  # Handler C handles the request.
  handler_a.handle_request('D')  # Handler A can't handle the request.
  
class ComputerDirector
    def construct(builder)
      builder.build_cpu
      builder.build_memory
      builder.build_storage
      builder.build_graphics_card
    end
  end
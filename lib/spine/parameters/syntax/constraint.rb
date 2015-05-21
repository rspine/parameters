module Spine
  module Parameters
    module Syntax
      module Constraint
        def constraint(name, message, &block)
          add_error(name, message) if block.call(symbolized[name])
          self
        end
      end
    end
  end
end

module Spine
  module Parameters
    module Syntax
      module Boolean
        def boolean(name, options = {}, &block)
          parse(name, Parsers::Boolean, &block)
        rescue ArgumentError
          add_error(name, 'is invalid truth value.')
          self
        end
      end
    end
  end
end

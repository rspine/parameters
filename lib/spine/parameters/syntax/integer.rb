module Spine
  module Parameters
    module Syntax
      module Integer
        def integer(name, options = {}, &block)
          parse(name, Parsers::Integer, &block)
        rescue ArgumentError
          add_error(name, 'is invalid number.')
          self
        end
      end
    end
  end
end

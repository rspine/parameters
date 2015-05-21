module Spine
  module Parameters
    module Syntax
      module Timestamp
        def timestamp(name, options = {}, &block)
          parse(name, Parsers::Timestamp, &block)
        rescue ArgumentError
          add_error(name, 'is invalid date.')
          self
        end
      end
    end
  end
end

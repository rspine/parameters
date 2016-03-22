module Spine
  module Parameters
    module Parsers
      module Anything
        extend self

        def parse(name, value)
          value
        end
      end
    end
  end
end

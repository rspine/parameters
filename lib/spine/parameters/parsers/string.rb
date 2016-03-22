module Spine
  module Parameters
    module Parsers
      module String
        extend self

        def parse(name, value)
          value.to_s
        end
      end
    end
  end
end

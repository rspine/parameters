module Spine
  module Parameters
    module Parsers
      module Integer
        extend self

        def parse(name, value)
          return nil unless value

          Integer(value.to_s, 10)
        end
      end
    end
  end
end

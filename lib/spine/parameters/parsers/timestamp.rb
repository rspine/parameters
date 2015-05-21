module Spine
  module Parameters
    module Parsers
      module Timestamp
        extend self

        def parse(name, value)
          return nil unless value
          return value if value.is_a?(Date)

          DateTime.iso8601(value.to_s)
        end
      end
    end
  end
end

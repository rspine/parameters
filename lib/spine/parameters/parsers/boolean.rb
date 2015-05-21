module Spine
  module Parameters
    module Parsers
      module Boolean
        extend self

        def parse(name, value)
          return nil unless value
          return true if value == true || value =~ (/^(true|t|yes|y|1)$/i)
          return false if value == false || value.empty? || value =~ (/^(false|f|no|n|0)$/i)

          raise ArgumentError.new
        end
      end
    end
  end
end

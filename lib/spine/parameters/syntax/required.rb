module Spine
  module Parameters
    module Syntax
      module Required
        def required(name)
          constraint(name.to_sym, 'is required') { |value| value.nil? }
        end
      end
    end
  end
end

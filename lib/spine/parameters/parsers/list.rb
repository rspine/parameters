module Spine
  module Parameters
    module Parsers
      class List
        def initialize(parser = Parsers::Anything)
          @parser = parser
        end

        def parse(name, value)
          return [] unless value
          return parse_collection(value) if value.is_a?(Enumerable)
          return parse_collection(value.split(',')) if value.is_a?(::String)

          raise ArgumentError.new
        end

        private

        def parse_collection(collection)
          collection.map { |item| parse_element(item) }
        end

        def parse_element(element)
          @parser.parse(nil, element)
        end
      end
    end
  end
end

module Spine
  module Parameters
    module Syntax
      module List
        def list(name, options = {}, &block)
          parse(name, Parsers::List.new(list_parser(options[:type])), &block)
        rescue ArgumentError
          add_error(name, 'is not a list.')
          self
        end

        private

        def list_parser(type)
          Parsers::ALL.fetch(type, Parsers::Anything)
        end
      end
    end
  end
end

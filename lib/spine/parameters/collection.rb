require 'spine/symbolize'

module Spine
  module Parameters
    class Collection
      include Syntax::Timestamp
      include Syntax::Integer
      include Syntax::Boolean
      include Syntax::Constraint
      include Syntax::Required
      include Errors

      attr_reader :raw, :values

      def initialize(raw)
        @raw = raw
        @values = {}
      end

      def [](key)
        values.fetch(key.to_sym) { symbolized[key.to_sym] }
      end

      def symbolized
        @symbolized ||= Symbolize.keys(raw)
      end

      private

      def parse(name, parser, &block)
        key = name.to_sym
        values[key] = parser.parse(key, symbolized[key]) if symbolized[key]
        values[key] ||= block.call if block_given?
        self
      end
    end
  end
end

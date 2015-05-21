module Spine
  module Parameters
    module Errors
      def errors
        @errors ||= {}
      end

      def add_error(field, message)
        errors[field] = [message]
      end

      def errors?
        !errors.empty?
      end
    end
  end
end

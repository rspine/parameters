module Spine
  module Parameters
    module Action
      def parameters
        @parameters ||= Collection.new(params)
      end
    end
  end
end

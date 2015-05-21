module Spine
  module Parameters
    autoload :Errors, 'spine/parameters/errors'
    autoload :Collection, 'spine/parameters/collection'

    module Syntax
      autoload :Constraint, 'spine/parameters/syntax/constraint'
      autoload :Integer, 'spine/parameters/syntax/integer'
      autoload :Timestamp, 'spine/parameters/syntax/timestamp'
      autoload :Boolean, 'spine/parameters/syntax/boolean'
      autoload :Required, 'spine/parameters/syntax/required'
    end

    module Parsers
      autoload :Integer, 'spine/parameters/parsers/integer'
      autoload :Timestamp, 'spine/parameters/parsers/timestamp'
      autoload :Boolean, 'spine/parameters/parsers/boolean'
    end
  end
end

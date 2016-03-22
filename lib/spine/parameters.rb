module Spine
  module Parameters
    autoload :Errors, 'spine/parameters/errors'
    autoload :Collection, 'spine/parameters/collection'
    autoload :Action, 'spine/parameters/action'

    module Syntax
      autoload :Constraint, 'spine/parameters/syntax/constraint'
      autoload :Integer, 'spine/parameters/syntax/integer'
      autoload :Timestamp, 'spine/parameters/syntax/timestamp'
      autoload :Boolean, 'spine/parameters/syntax/boolean'
      autoload :Required, 'spine/parameters/syntax/required'
      autoload :List, 'spine/parameters/syntax/list'
    end

    module Parsers
      autoload :Integer, 'spine/parameters/parsers/integer'
      autoload :Timestamp, 'spine/parameters/parsers/timestamp'
      autoload :Boolean, 'spine/parameters/parsers/boolean'
      autoload :Anything, 'spine/parameters/parsers/anything'
      autoload :String, 'spine/parameters/parsers/string'
      autoload :List, 'spine/parameters/parsers/list'

      ALL = {
        anything: Parsers::Anything,
        string: Parsers::String,
        integer: Parsers::Integer,
        boolean: Parsers::Boolean,
        timestamp: Parsers::Timestamp
      }
    end
  end
end

#!/usr/bin/ruby
# frozen_string_literal: true

class Triple
    def initialize(str)
      @string = str
    end
  
    def count
      eval(@string)
    end

    def print_string
        print @string
    end
end
  
class Triple_in_brackets < Triple
    def initialize(str)
      @string = '(' + str + ')'
    end
end
# frozen_string_literal: true

# module Errors
module Errors
  # class WrongClassError
  class WrongClassError < StandardError
    def initialize
      super('Class is wrong!')
    end
  end

  # class EmptyStringErro
  class EmptyStringError < StandardError
    def initialize
      super('Argument is empty or problem with data types!')
    end
  end
end

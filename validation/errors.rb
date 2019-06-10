# frozen_string_literal: true

# module Errors
module Errors
  # class WrongClassError
  class WrongClassError < StandardError
    def initialize
      super('Class is wrong!')
    end
  end

  # class WrongNumberError
  class WrongNumberError < StandardError
    def initialize
      super('Number must be a positive!')
    end
  end

  # class EmptyError
  class EmptyError < StandardError
    def initialize
      super('Argument is empty!')
    end
  end
end

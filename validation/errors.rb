module Errors
  class WrongClassError < StandardError
    def initialize
      super('Class is wrong!')
    end
  end

  class EmptyStringError < StandardError
    def initialize
      super('Argument is empty or problem with data types!')
    end
  end
end

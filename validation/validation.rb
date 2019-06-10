# frozen_string_literal: true

require_relative 'errors'

# module Validate
module Validate
  include Errors

  def check_classbasic(argums, class_basic)
    raise WrongClassError unless argums.instance_of? class_basic
  end

  def check_positive(number)
    raise WrongNumberError if number.negative?
  end

  def check_empty(*argums)
    raise EmptyError if argums.empty?
  end
end

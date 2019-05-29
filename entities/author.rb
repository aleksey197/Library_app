# frozen_string_literal: true

require_relative '../validation/errors'

# class Author
class Author
  include Errors

  attr_reader :name, :biography

  def initialize(name:, biography: '')
    raise EmptyStringError if name == '' || !(name.is_a? String)

    @name = name
    @biography = biography
  end

  def to_s
    "Name: #{@name}. #{@biography}"
  end
end

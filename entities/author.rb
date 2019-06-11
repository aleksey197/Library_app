# frozen_string_literal: true

require_relative '../validation/validation'

# class Author
class Author
  include Validate

  attr_reader :name, :biography

  def initialize(name:, biography: '')
    validate(name, biography)

    @name = name
    @biography = biography
  end

  def to_s
    "Name: #{@name}. #{@biography}"
  end

  private

  def validate(name, biography)
    check_classbasic(name, String)
    check_classbasic(biography, String)
    check_empty(name)
  end
end

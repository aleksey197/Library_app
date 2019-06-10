# frozen_string_literal: true

require_relative '../validation/validation'

# class Book
class Book
  include Validate

  attr_reader :title, :author

  def initialize(title:, author:)
    validate(title, author)

    @title = title
    @author = author
  end

  def to_s
    "Title: #{@title}: #{@author}"
  end

  private

  def validate(title, author)
    check_classbasic(title, String)
    check_classbasic(author, Author)
    check_empty(title)
  end
end

# frozen_string_literal: true

require_relative '../validation/errors'

# class Book
class Book
  include Errors

  attr_reader :title, :author

  def initialize(title:, author:)
    raise EmptyStringError if title == '' || !(title.is_a? String)
    raise WrongClassError unless author.is_a? Author

    @title = title
    @author = author
  end

  def to_s
    "Title: #{@title}: #{@author}"
  end
end

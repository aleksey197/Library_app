# frozen_string_literal: true

# class Book
class Book
  attr_reader :title, :author

  def initialize(title:, author:)
    raise EmptyStringError if title == '' || !(title.is_a? String)
    raise WrongClassError if title == !(author.is_a? Author)

    @title = title
    @author = author
  end

  def to_s
    "Title: #{@title}: #{@author}"
  end
end

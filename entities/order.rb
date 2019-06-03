# frozen_string_literal: true

# class Order
class Order
  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date:)
    raise WrongClassError if !(book.is_a? Book) || !(reader.is_a? Reader)
    raise WrongClassError unless date.is_a? Date

    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "Order: #{@book}, #{@reader}, #{@date}"
  end
end

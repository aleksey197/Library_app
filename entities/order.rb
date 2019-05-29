require_relative '../validation/errors'

class Order
  include Errors

  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date:)
    raise WrongClassError if !(book.is_a? Book) || !(reader.is_a? Reader) || !(date.is_a? Date)

    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "Order: #{@book}, #{@reader}, #{@date}"
  end
end

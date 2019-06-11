# frozen_string_literal: true

require_relative '../validation/validation'

# class Order
class Order
  include Validate

  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date:)
    validate(book, reader, date)

    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "Order: #{@book}, #{@reader}, #{@date}"
  end

  private

  def validate(book, reader, date)
    check_classbasic(book, Book)
    check_classbasic(reader, Reader)
    check_classbasic(date, Date)
  end
end

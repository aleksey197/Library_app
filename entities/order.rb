class Order

  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date:)
    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "Order: #{@book}, #{@reader}, #{@date}"
  end
end

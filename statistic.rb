# frozen_string_literal: true

# module Statistics
module Statistics
  def find_most_popular_element(quantity, item_name)
    result = @orders
             .group_by(&item_name)
             .max_by(quantity) { |_, orders| orders.length }
             .map(&:first)

    quantity == 1 ? result.first : result
  end

  def top_reader(quantity: 1)
    find_most_popular_element(quantity, :reader)
  end

  def most_popular_books(quantity: 1)
    find_most_popular_element(quantity, :book)
  end

  def number_of_readers_popular_book(quantity: 3)
    books = find_most_popular_element(quantity, :book)

    @orders
      .select { |order| books.include? order.book }
      .uniq(&:reader)
      .length
  end
end

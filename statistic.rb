module Statistics

  def find_most_popular_element(quantity, item_name)
    result = @orders
      .group_by(&item_name)
      .max_by(quantity) { |_item, orders| orders.size }
      .map(&:first)

    quantity == 1 ? result.first : result
  end

  def top_reader(quantity: 1)
    top_reader = find_most_popular_element(quantity, :reader)
    puts "The top reader is #{top_reader}.\""
  end

  def most_popular_books(quantity: 1)
    most_popular_books = find_most_popular_element(quantity, :book)
    puts "The most popular book is #{most_popular_books}.\""
  end

  def number_of_readers_of_popular_book(quantity: 3)
    books = find_most_popular_element(quantity, :book)

    number_of_readers_of_popular_book = @orders
      .select { |order| books.include? order.book }
      .uniq(&:reader)
      .size
    puts "Number of readers of the most popular books is #{number_of_readers_of_popular_book}."
  end
end

require 'faker'
require 'date'

require_relative './entities/author'
require_relative './entities/book'
require_relative './entities/reader'
require_relative './entities/order'


module Generator
  class << self
    def fake_data
      {authors: authors,
      books: books,
      readers: readers,
      orders: orders}
    end

    private
    def authors
      @authors = Array.new(7) do
        Author.new(
          name: Faker::Name.name,
          biography: 'Author Biography' )
      end
    end

    def books
      @books = Array.new(7) do
        Book.new(
          title: Faker::Book.title,
          author: @authors.sample )
      end
    end

    def readers
      @readers = Array.new(15) do
        Reader.new(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          city: Faker::Address.city,
          street: Faker::Address.street_name,
          house: Faker::Address.building_number )
      end
    end

    def orders
      @orders = Array.new(15) do
        Order.new(
          book: @books.sample,
          reader: @readers.sample,
          date: Date.today )
      end
    end
  end
end

puts Generator.fake_data

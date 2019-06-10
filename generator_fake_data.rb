# frozen_string_literal: true

# module GeneratorFAkeData
module GeneratorFAkeData
  class << self
    def fake_data
      {
        authors: authors,
        books: books,
        readers: readers,
        orders: orders
      }
    end

    private

    def authors
      @authors = Array.new(15) do
        Author.new(
          name: Faker::Name.name,
          biography: 'Author Biography'
        )
      end
    end

    def books
      @books = Array.new(15) do
        Book.new(
          title: Faker::Book.title,
          author: @authors.sample
        )
      end
    end

    def readers
      @readers = Array.new(20) do
        Reader.new(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          city: Faker::Address.city,
          street: Faker::Address.street_name,
          house: Faker::Address.building_number.to_i
        )
      end
    end

    def orders
      @orders = Array.new(50) do
        Order.new(
          book: @books.sample,
          reader: @readers.sample,
          date: Date.today
        )
      end
    end
  end
end

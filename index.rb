# frozen_string_literal: true

require_relative 'library'

library = Library.new

puts 'The top reader is:'
puts library.top_reader
puts 'The most popular book is:'
puts library.most_popular_books
puts 'Number of readers of the popular books is:'
puts library.number_of_readers_popular_book

library.save_data

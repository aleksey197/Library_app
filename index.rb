require 'yaml'
require 'faker'
require 'date'

require_relative 'entities/author'
require_relative 'entities/book'
require_relative 'entities/reader'
require_relative 'entities/order'

require_relative 'generator_fake_data'
require_relative 'create_database'
require_relative 'statistic'


class Library

  include CreateDatabase
  include Statistics


  def initialize
    if File.exist?('seeds.yaml')
      load_data
    else
      generate_data
      save_data
    end
  end

  def statistics
    top_reader
    most_popular_books
    number_of_readers_of_popular_book
  end

end

library = Library.new
puts library.statistics

# frozen_string_literal: true

require_relative 'dependency'

# main class
class Library
  include Database
  include Statistics

  attr_reader :authors, :books, :readers, :orders

  def initialize
    load_data
  end

  def delete_file
    delete_data
  end

  def add_entity_to_library(data)
    @authors  = data[:authors]
    @books    = data[:books]
    @readers  = data[:readers]
    @orders   = data[:orders]
  end
end

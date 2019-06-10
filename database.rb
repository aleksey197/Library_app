# frozen_string_literal: true

# module CreateDatabase
module Database
  PATH_FILE = 'seeds.yaml'.to_s

  def save_data
    data = {
      authors: @authors,
      books: @books,
      readers: @readers,
      orders: @orders
    }

    File.write(PATH_FILE, data.to_yaml)
  end

  def load_data
    if File.exist?('seeds.yaml')
      yaml_file = File.read(PATH_FILE)
      data = Psych.safe_load(
        yaml_file, [Symbol, Date, Author, Book, Reader, Order], [], true
      )
      add_entity_to_library data
    else
      generate_data
    end
  end

  def generate_data
    data = GeneratorFakeData.fake_data
  end

  def delete_data
    File.delete(PATH_FILE) if File.exist? PATH_FILE
  end
end

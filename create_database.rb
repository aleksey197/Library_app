module CreateDatabase
  def save_data
    data = {
      authors: @authors,
      books: @books,
      readers: @readers,
      orders: @orders
    }

    File.write(path_to_file, data.to_yaml)
  end

  def load_data
    yaml_file = File.read(path_to_file)
    data = Psych.safe_load(
      yaml_file, [Symbol, Date, Author, Book, Reader, Order], [], true
    )
    add_entity_to_library data
  end

  def generate_data
    data = GeneratorFAkeData.fake_data
    add_entity_to_library data
  end

  def delete_data
    file = path_to_file
    File.delete(file)
  end

  private

  def add_entity_to_library(data)
    @authors  = data[:authors]
    @books    = data[:books]
    @readers  = data[:readers]
    @orders   = data[:orders]
  end

  def path_to_file
    'seeds.yaml'.to_s
  end
end

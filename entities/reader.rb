class Reader

  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = Integer(house)
  end

  def to_s
    "Reader: #{@name}, #{@email}, #{@city}, #{@street} / #{@house}"
  end
end

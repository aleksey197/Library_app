require_relative '../validation/errors'

class Reader
  include Errors

  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    raise EmptyStringError if ([name, email, city, street].any? { |a| a == '' || !(a.is_a? String) })
    raise EmptyStringError if house == !((house.is_a? Integer) && house.positive?)

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

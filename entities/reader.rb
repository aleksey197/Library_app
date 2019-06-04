# frozen_string_literal: true

require_relative '../validation/errors'

# class Reader
class Reader
  include Errors

  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    arguments = [name, email, city, street, house]
    raise EmptyStringError1 if arguments.any? { |a| a == '' }
    raise EmptyStringError if arguments.any? { |a| a == !(a.is_a? String) }

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

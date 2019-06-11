# frozen_string_literal: true

require_relative '../validation/validation'

# class Reader
class Reader
  include Validate

  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    validate(house, name, email, city, street)

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  def to_s
    "Reader: #{@name}, #{@email}, #{@city}, #{@street} / #{@house}"
  end

  private

  def validate(house, *argums)
    check_classbasic(house, Integer)
    check_positive(house)
    check_empty(*argums)
  end
end

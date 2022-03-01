# frozen_string_literal: true

class Dog
  def initialize(age:, color:)
    @age = age
    @color = color
  end

  attr_reader :age, :color
end

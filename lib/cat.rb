# frozen_string_literal: true

class Cat
  def initialize(age:, color:)
    @age = age
    sleep 60
    @color = color
  end

  attr_reader :age, :color
end

# frozen_string_literal: true

class Dog
  def initialize(age:, color:)
    @age = age
    sleep 60
    @color = color
  end

  attr_reader :age, :color
end

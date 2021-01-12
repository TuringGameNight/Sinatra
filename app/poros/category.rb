# frozen_string_literal: true

class Category
  attr_reader :id, :name

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
  end
end

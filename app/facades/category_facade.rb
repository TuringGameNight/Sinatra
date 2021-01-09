# frozen_string_literal: true

class CategoryFacade
  def self.category
    data = CategoryService.category
    
    data.map do |category|
      Category.new(category)
    end
  end
end

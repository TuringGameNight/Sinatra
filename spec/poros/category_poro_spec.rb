# frozen_string_literal: true

require './spec/spec_helper'

RSpec.describe 'Category' do
  def app
    Category
  end

  it 'exists and has attributes' do
    categories = CategoryService.category
    category = Category.new(categories.first)

    expect(category.name).to eq('18XX')
    expect(category.id).to eq('2bdFPJUvFo')
    expect(category.url).to eq('https://www.boardgameatlas.com/category/2bdFPJUvFo/18xx')
  end
end

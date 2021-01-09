# frozen_string_literal: true

require './spec/spec_helper'

RSpec.describe 'CategoryFacade' do
  def app
    CategoryFacade
  end

  it 'returns category list' do
    categories= CategoryFacade.category

    expect(categories).to be_a(Array)
    expect(categories.first).to be_an_instance_of(Category)
  end
end

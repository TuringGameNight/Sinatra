# frozen_string_literal: true

require './spec/spec_helper'

RSpec.describe 'CategoryService' do
  def app
    CategoryService
  end

  describe 'class methods' do
    describe 'category' do
      it 'returns json data' do
        categories = CategoryService.category

        expect(categories).to be_an(Array)
        expect(categories.first).to be_a(Hash)

        expect(categories.count).to eq(122)

        expect(categories.first).to have_key(:name)
        expect(categories.first[:name]).to be_a(String)

        expect(categories.first).to have_key(:id)
        expect(categories.first[:id]).to be_a(String)

        expect(categories.first).to have_key(:url)
        expect(categories.first[:url]).to be_a(String)

        # TODO: Need to find type/category/mechanics of game
      end
    end
  end
end

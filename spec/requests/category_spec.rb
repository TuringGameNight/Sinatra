#frozen_string_literal: true

require './spec/spec_helper'

RSpec.describe 'SearchController' do
  describe 'GET /api/v1/category' do
    def app
      SearchController
    end

    it 'returns json data' do
      response = get '/api/v1/game/categories'

      categories = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(categories).to be_an(Array)
      expect(categories.first).to be_a(Hash)

      expect(categories.count).to eq(122)

      expect(categories.first).to be_a(Hash)

      expect(categories.first[:attributes]).to have_key(:name)
      expect(categories.first[:attributes][:name]).to be_a(String)

      expect(categories.first[:attributes]).to have_key(:id)
      expect(categories.first[:attributes][:id]).to be_a(String)

      expect(categories.first[:attributes]).to have_key(:url)
      expect(categories.first[:attributes][:url]).to be_a(String)

      # TODO: Need to find type/category/mechanics of game
    end
  end
end

require './spec/spec_helper'

def app
  CategoryController
end

RSpec.describe 'CategoryController' do
  describe 'GET /api/v1/category' do
    it 'returns json data' do
      response = get '/api/v1/game/categories'

      categories = JSON.parse(response.body, symbolize_names: true)

      expect(categories).to be_a(Hash)
      expect(categories).to have_key(:categories)

      expect(categories[:categories]).to be_an(Array)
      expect(categories[:categories].count).to eq(122)

      expect(categories[:categories].first).to be_a(Hash)

      expect(categories[:categories].first).to have_key(:name)
      expect(categories[:categories].first[:name]).to be_a(String)

      expect(categories[:categories].first).to have_key(:id)
      expect(categories[:categories].first[:id]).to be_a(String)

      expect(categories[:categories].first).to have_key(:url)
      expect(categories[:categories].first[:url]).to be_a(String)

      # TODO: Need to find type/category/mechanics of game
    end
  end
end

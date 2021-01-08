require './spec/spec_helper'

def app
  SearchController
end

RSpec.describe 'SearchController' do
  describe 'GET /api/v1/search' do
    it 'returns json data' do
      response = get '/api/v1/search?name=catan'

      games = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(games).to be_a(Array)

      expect(games).to be_an(Array)
      expect(games.count).to eq(100)

      expect(games.first).to be_a(Hash)

      expect(games.first).to have_key(:attributes)
      expect(games.first[:attributes]).to be_a(Hash)

      expect(games.first[:attributes]).to have_key(:name)
      expect(games.first[:attributes][:name]).to be_a(String)

      expect(games.first[:attributes]).to have_key(:description)
      expect(games.first[:attributes][:description]).to be_a(String)

      expect(games.first[:attributes]).to have_key(:age_range)
      expect(games.first[:attributes][:age_range]).to be_an(String)

      expect(games.first[:attributes]).to have_key(:duration)
      expect(games.first[:attributes][:duration]).to be_an(Integer)

      expect(games.first[:attributes]).to have_key(:image)
      expect(games.first[:attributes][:image]).to be_a(String)

      expect(games.first[:attributes]).to have_key(:type)

      expect(games.first[:attributes][:type]).to be_nil
      # TODO: Need to find type/category/mechanics of game
    end
  end
end

require './spec/spec_helper'

def app
  SearchController
end

RSpec.describe 'SearchController' do
  describe 'GET /api/v1/search' do
    it 'returns json data' do
      response = get '/api/v1/search/catan'
      games = JSON.parse(response.body, symbolize_names: true)

      expect(games).to be_a(Hash)
      expect(games).to have_key(:games)

      expect(games[:games]).to be_an(Array)
      expect(games[:games].count).to eq(100)

      expect(games[:games].first).to be_a(Hash)

      expect(games[:games].first).to have_key(:name)
      expect(games[:games].first[:name]).to be_a(String)

      expect(games[:games].first).to have_key(:description)
      expect(games[:games].first[:description]).to be_a(String)

      expect(games[:games].first).to have_key(:min_age)
      expect(games[:games].first[:min_age]).to be_an(Integer)

      expect(games[:games].first).to have_key(:min_playtime)
      expect(games[:games].first[:min_playtime]).to be_an(Integer)

      expect(games[:games].first).to have_key(:max_playtime)
      expect(games[:games].first[:max_playtime]).to be_an(Integer)

      expect(games[:games].first).to have_key(:image_url)
      expect(games[:games].first[:image_url]).to be_a(String)

      # TODO: Need to find type/category/mechanics of game
    end
  end
end

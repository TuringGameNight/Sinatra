require './spec/spec_helper'


RSpec.describe 'BoardGamesService' do
  def app
    BoardGamesService
  end
  
  describe 'class methods' do
    describe '.find_board_games(name)' do
      it 'returns json data' do
        games = BoardGamesService.find_board_games('catan')

        expect(games).to be_an(Array)
        expect(games.count).to eq(100)

        expect(games.first).to be_a(Hash)

        expect(games.first).to have_key(:name)
        expect(games.first[:name]).to be_a(String)

        expect(games.first).to have_key(:description)
        expect(games.first[:description]).to be_a(String)

        expect(games.first).to have_key(:min_age)
        expect(games.first[:min_age]).to be_an(Integer)

        expect(games.first).to have_key(:min_playtime)
        expect(games.first[:min_playtime]).to be_an(Integer)

        expect(games.first).to have_key(:max_playtime)
        expect(games.first[:max_playtime]).to be_an(Integer)

        expect(games.first).to have_key(:image_url)
        expect(games.first[:image_url]).to be_a(String)

        # TODO: Need to find type/category/mechanics of game
      end
    end
  end
end

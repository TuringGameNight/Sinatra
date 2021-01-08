# frozen_string_literal: true

require './spec/spec_helper'

RSpec.describe 'BoardGame' do
  def app
    BoardGame
  end

  it 'exists and has attributes' do
    board_games = BoardGamesService.find_board_games('catan')
    game = BoardGame.new(board_games.first)

    expect(game.name).to eq('Catan')
    expect(game.description).to eq(board_games.first[:description])
    expect(game.age_range).to eq('10+')
    expect(game.duration).to eq(90)
    expect(game.image).to eq('https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559258096678-51Eiofu9mqL.jpg')
    expect(game.game_type).to eq(nil)
  end
end

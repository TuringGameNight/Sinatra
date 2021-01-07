require './spec/spec_helper'

def app
  BoardGamesFacade
end

RSpec.describe 'BoardGamesFacade' do
  it 'returns board games' do
    board_games = BoardGamesFacade.search('catan')

    expect(board_games).to be_a(Array)
    expect(board_games.first).to be_an_instance_of(BoardGame)
  end
end
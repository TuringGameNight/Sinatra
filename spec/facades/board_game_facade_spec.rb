# frozen_string_literal: true

require './spec/spec_helper'

RSpec.describe 'BoardGamesFacade' do
  def app
    BoardGamesFacade
  end

  it 'returns board games' do
    board_games = BoardGamesFacade.search('catan')

    expect(board_games).to be_a(Array)
    expect(board_games.first).to be_an_instance_of(BoardGame)
  end
end

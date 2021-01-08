# frozen_string_literal: true

class BoardGamesFacade
  def self.search(name)
    data = BoardGamesService.find_board_games(name)

    data.map do |game|
      BoardGame.new(game)
    end
  end
end

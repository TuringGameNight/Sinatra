# frozen_string_literal: true

class BoardGamesFacade
  def self.search(name)
    data = BoardGamesService.find_board_games(name)

    data.map do |game|
      BoardGame.new(game)
    end
  end

  def self.category
    data = BoardGamesService.category

    data.map do |category|
      Category.new(category)
    end
  end
end

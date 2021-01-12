# frozen_string_literal: true

class BoardGamesFacade
  def self.search(name)
    data = BoardGamesService.find_board_games(name)

    data.map do |game|
      categories = BoardGamesFacade.category
      BoardGame.new(game, categories)
    end
  end

  def self.category
    data = BoardGamesService.category

    data.map do |category|
      Category.new(category)
    end
  end
end

# frozen_string_literal: true

class BoardGamesFacade
  def self.search(name)
    data = BoardGamesService.find_board_games(name)

    available_categories = BoardGamesFacade.category
    data.map do |game|
      categories = []
      game[:categories].each do |game_category|
        available_categories.each do |category|
          if game_category[:id] == category.id
            categories << category.name
          end
        end
      end
      BoardGame.new(game, categories.join(', '))
    end
  end

  def self.category
    data = BoardGamesService.category

    data.map do |category|
      Category.new(category)
    end
  end
end

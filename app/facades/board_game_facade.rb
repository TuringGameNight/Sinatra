# frozen_string_literal: true

class BoardGamesFacade
  def self.search(name)
    data = BoardGamesService.find_board_games(name)
    available_categories = BoardGamesFacade.category

    data.map do |game|
      categories = BoardGamesFacade.translate_ids(game, available_categories)

      BoardGame.new(game, categories)
    end
  end

  def self.translate_ids(game, available_categories)
    translated_categories = []

    game[:categories].each do |game_category|
      available_categories.each do |category|
        if game_category[:id] == category.id
          translated_categories << category.name
        end
      end
    end
    translated_categories.join(', ')
  end

  def self.category
    data = BoardGamesService.category

    data.map do |category|
      Category.new(category)
    end
  end
end

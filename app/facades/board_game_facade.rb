# frozen_string_literal: true

class BoardGamesFacade
  def self.search(name)
    data = BoardGamesService.find_board_games(name)

    data.map do |game|
      categories = BoardGamesFacade.translate_ids(game)
      BoardGame.new(game, categories)
    end
  end

  def self.translate_ids(game)
    translated_categories = []
    categories = BoardGamesFacade.category

    game[:categories].each do |game_category|
      categories.each do |category|
        if game_category[:id] == category.id
          translated_categories << category.name
        end
      end
    end
    return nil if translated_categories.empty?
    translated_categories.join(', ')
  end

  def self.category
    data = BoardGamesService.category

    data.map do |category|
      Category.new(category)
    end
  end
end

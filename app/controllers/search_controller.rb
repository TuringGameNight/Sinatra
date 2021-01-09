# frozen_string_literal: true

require './config/environment'

class SearchController < ApplicationController
  get '/api/v1/search' do
    board_games = BoardGamesFacade.search(params['name'])
 
    BoardGameSerializer.new(board_games).serializable_hash.to_json
  end

  get '/api/v1/game/categories' do

    category = CategoryFacade.category
    CategorySerializer.new(category).serializable_hash.to_json
  end
end

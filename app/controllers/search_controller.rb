# frozen_string_literal: true

require './config/environment'

class SearchController < ApplicationController
  get '/api/v1/search' do
    board_games = BoardGamesFacade.search(params['name'])

<<<<<<< HEAD
    response = conn.get('search') do |req|
      req.params['name'] = params['name']
    end

    response.body

  get '/api/v1/game/categories' do
    conn = Faraday.new(
      url: 'https://api.boardgameatlas.com/api/',
      params: { client_id: ENV['CLIENT_ID'] }
    )

    response = conn.get('game/categories')

    response.body
    end
=======
    BoardGameSerializer.new(board_games).serializable_hash.to_json
>>>>>>> dee7ba19b2cc736355b6fca46f156b053996505f
  end
end

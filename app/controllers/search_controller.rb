require './config/environment'

class SearchController < ApplicationController

  get '/api/v1/search' do
    conn = Faraday.new(
      url: 'https://api.boardgameatlas.com/api/',
      params: { client_id: ENV['CLIENT_ID'] }
    )

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
  end
end

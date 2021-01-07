require './config/environment'

class CategoryController < ApplicationController

  get '/api/v1/category' do
    conn = Faraday.new(
      url: 'https://api.boardgameatlas.com/api/',
      params: { client_id: ENV['CLIENT_ID'] }
    )

    response = conn.get('game/categories')

    response.body
  end

end

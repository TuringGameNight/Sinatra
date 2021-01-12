# frozen_string_literal: true

class BoardGamesService
  def self.conn
    Faraday.new(
      url: 'https://api.boardgameatlas.com/api/',
      params: { client_id: ENV['CLIENT_ID'] }
    )
  end

  def self.find_board_games(name)
    response = conn.get('search') do |req|
      req.params['name'] = name
      req.params['limit'] = 20
    end

    json = JSON.parse(response.body, symbolize_names: true)
    json[:games]
  end

  def self.category
    response = conn.get('game/categories')
    json = JSON.parse(response.body, symbolize_names: true)
    json[:categories]
  end
end

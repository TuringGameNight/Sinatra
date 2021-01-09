# frozen_string_literal: true

class CategoryService
  def self.conn
    Faraday.new(
      url: 'https://api.boardgameatlas.com/api/',
      params: { client_id: ENV['CLIENT_ID'] }
    )
  end

  def self.category
    response = conn.get('game/categories') 
    json = JSON.parse(response.body, symbolize_names: true)
    json[:categories]
  end
end

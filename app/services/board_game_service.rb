class BoardGamesService
  def self.conn
    conn = Faraday.new(
      url: 'https://api.boardgameatlas.com/api/',
      params: { client_id: ENV['CLIENT_ID'] }
    )
  end

  def self.find_board_games(name)
    response = conn.get('search') do |req|
      req.params['name'] = name
    end

    json = JSON.parse(response.body, symbolize_names: true)
    json[:games]
  end
end

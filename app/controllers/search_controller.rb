require './config/environment'

class SearchController < ApplicationController

  get '/api/v1/search' do
    conn = Faraday.new(
      url: 'https://api.boardgameatlas.com/api/',
      # client_id will go in a ENV variable
      params: { client_id: 'zPLv9mln8q' }
    ) 

    response = conn.get('search') do |req|
      # this param will need to come from the search GET request
      req.params['name'] = 'monopoly'
    end

    response.body
  end

end

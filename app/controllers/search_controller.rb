require './config/environment'

class SearchController < ApplicationController

  get '/api/v1/search' do
    conn = Faraday.new(
      url: 'https://api.boardgameatlas.com/api',
      # client_id will go in a ENV variable
      params: { client_id: 'zPLv9mln8q' }
    ) 

    response = conn.get('/search') do |req|
      req.params['name'] = 'monopoly'
    end
require 'pry'; binding.pry

    json = JSON.parse(response.body, symbolize_names: true)
require 'pry'; binding.pry
  end

end

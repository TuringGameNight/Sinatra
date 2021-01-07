require './spec/spec_helper'

def app
  SearchController
end

RSpec.describe 'SearchController' do
  describe 'GET /api/v1/search' do
    it 'returns json data' do
      response = get '/api/v1/search'
    end
  end
end

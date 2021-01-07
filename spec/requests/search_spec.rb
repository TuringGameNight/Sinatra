require './spec/spec_helper'

def app
  SearchController
end

RSpec.describe 'SearchController' do
  context 'when a search request is recieved' do
    it 'returns json data' do
      get '/api/v1/search'
    end
  end
end

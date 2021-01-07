ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app/controllers/application_controller'
require_all 'app'

Figaro.application = Figaro::Application.new(
  environment: 'production',
  path: File.expand_path("config/application.yml")
)
Figaro.load

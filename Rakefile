ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

require 'rspec/core/rake_task'
task :default => :spec
RSpec::Core::RakeTask.new

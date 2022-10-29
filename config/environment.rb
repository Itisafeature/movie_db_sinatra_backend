ENV['RACK_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

require './app/controllers/application_controller'
require_all 'app'

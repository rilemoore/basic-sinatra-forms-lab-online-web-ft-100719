ENV['SINATRA_ENV'] ||= "development"
require 'pry'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
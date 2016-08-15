require './lib/airport_api'
require 'shotgun'
require 'sinatra'

get '/' do
	@state = AirportApi.new.get_state
	@name = AirportApi.new.get_airport_name
	erb :index
end

get '/weather' do
  @weather = AirportApi.new.get_weather
  erb :weather
end

get '/status' do
	@status = AirportApi.new.get_status
	erb :status
end
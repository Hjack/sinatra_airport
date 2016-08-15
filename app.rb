require './lib/airport_api'
require 'shotgun'
require 'sinatra'

get '/' do
	@time = Time.now
  erb :index
end

get '/api' do
  @weather = AirportApi.new.get_weather
  erb :api
end
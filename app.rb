require 'shotgun'
require 'sinatra'

get '/' do
	@time = Time.now
  erb :index
end
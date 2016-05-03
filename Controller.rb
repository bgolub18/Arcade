require 'sinatra'
require relative 'Models/rps.rb'

get '/' do
	
	erb :index
end
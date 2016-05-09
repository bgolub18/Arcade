require 'sinatra'
require_relative 'Models/rps.rb'
enable :sessions

get '/' do

	erb :index
end

post '/' do
	rps = Game.new
	rps.play(params[:choice])
	
end

get '/:score' do
	case params[:score]
	when "1-0"
		
	when "0-1"

	when "0-0"

	when "1-1"	

	end
end		
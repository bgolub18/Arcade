require 'sinatra'
require_relative 'Models/rps.rb'
enable :sessions

get '/' do
	session[:game]= Game.new
	session[:wins] = @wins
	session[:loses] = @loses
	erb :index
end

post '/' do
	game = session[:game] 
	@game = game.play(params[:choice])
	erb :results
end


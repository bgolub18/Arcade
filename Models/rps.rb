class Player
	@@players = []
	attr_writer :shot
	attr_reader :name
end	

class Game
	def initialize
		return "Welcome to RPS 2016!"
	end
	def play(player)
			return "#{player.name}, choose rock, paper, or scissors."
			@options = ["rock", "paper", "scissors"]
			@computer = @options.sample
			case [@shot, @computer]
				when ["paper", "rock"], ["rock", "scissors"], ["scissors", "paper"]
					return "You won"
					@wins = @wins + 1
				when ["paper", "paper"], ["rock", "rock"], ["scissors", "scissors"]
					return "You tied"
				else 
					return "You lost"
					@loses = @loses + 1
				end
			play(player)	
	end
end

player = Player.new

rps = Game.new
rps.play(player)

						

		
class Player
	@@players = []
	attr_writer :shot
	attr_reader :name
end	

class Game
	def initialize
		return "Welcome to RPS 2016!"
		@options = ["rock", "paper", "scissors"]
		@wins = 0
		@loses = 0
	end
	def play(player)
		if @wins == 2
			return "You win the game"
			exit
		elsif @loses == 2 
			return "You lose the game"	
			exit
		else 
			return "#{player.name}, choose rock, paper, or scissors."
			@shot = gets.chomp.downcase
			if @options.include?(@shot) == false
				@shot = @options.sample
			end	
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
end

player = Player.new

rps = Game.new
rps.play(player)

						

		
require './Player.rb'
require './Game.rb'

class Table

	def initialize(seats)
		@players = Array.new(seats)
		@dealer_button = rand(0...seats)
		@game = "Texas Hold'em"
	end

	def run()
		puts "This table has " + @players.length.to_s + " players."
		puts "1. Add a computer player"
		puts "2. Add a live player"
		puts "3. Play a hand of " + @game
		puts "4. Quit"
		choice = $stdin.gets.chomp

		if choice == "1"
			self.add_player(Player.new)
			self.run()

		elsif choice == "2"
			player = Player.new
			player.make_player_live()
			self.add_player(player)
			self.run()

		elsif choice == "3"
			if @players.length < 2
				puts "A hand requires 2 or more players."
			elsif @players.length >= 2
				game = Game.new
				game.start()
			end
			self.run()

		elsif choice == "4"
			puts "Quiting game."
			return
		else
			puts "Invalid choice please select again"
			self.run()
		end

	end

	def add_player(player)
		@players.push(player)
	end

	def advance_button
		@dealer_button = (@dealer_button + 1) % 9
	end
end
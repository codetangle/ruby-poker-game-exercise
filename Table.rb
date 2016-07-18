require './Player.rb'
require './Game.rb'

class Table

	def initialize(seats)
		i = 0
		@players = []
		while i < seats
			@players.push(Player.new())
			i += 1
		end

		@dealer_button = rand(0...seats)
		@game = "Texas Hold'em"
	end

	def display_players()
		puts "Current Players"
		@players.each do |val|
			puts val
		end
	end

	def get_open_seat()
		i = 0
		while i < @players.length
			if @players[i] == 'Empty'
				return i
			end
			i += 1
		end
		return -1
	end

	def run()
		puts "This table has " + @players.length.to_s + " players."
		puts "1. Add a computer player"
		puts "2. Add a live player"
		puts "3. Play a hand of " + @game
		puts "4. Quit"

		self.display_players()

		choice = $stdin.gets.chomp

		if choice == "1"

			seat = self.get_open_seat()

			player = Player.new
			player.make_computer_player(100)

			self.add_player(Player.new, seat)
			self.run()

		elsif choice == "2"

			puts "Where would you like to sit?"
			seat = $stdin.gets.chomp

			player = Player.new
			player.make_live_player(100)

			self.add_player(player, seat.to_i)
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

	def add_player(player, seat)
		@players[seat] = player
	end

	def advance_button
		@dealer_button = (@dealer_button + 1) % @players.length
	end
end
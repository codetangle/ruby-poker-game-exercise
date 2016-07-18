require './settings.rb'

class Player

	def initialize()
		@name = 'Empty'
		@chips = 0
		@all_in = false
		@type = 'empty'
		@hand = []
	end

	def to_s
		@name
	end

	def make_live_player(chips)
		@type = 'live'
		@chips += chips
		@name = $names[rand(0...$names.length)]
	end

	def make_computer_player(chips)
		@type = 'computer'
		@chips += chips
		@name = $names[rand(0...$names.length)]
	end

	def add_card(card)
		@hand.push(card)
	end

	def show_hand()
		@hand.each do |card|
			print card.display() + " "
		end
		print "\n"
	end

	def bet
		puts "A bet was made."
	end

	def call
		puts "A call was made."
	end

	def raise
		puts "A bet was made."
	end

	def fold
		puts "You hand was folded"
		@hand = []
	end

	def win(pot)
		@chips += pot
	end
end
class Player

	def initialize

		@chips = 0
		@all_in = false
		@type = 'computer'
		@hand = []
	end

	def make_player_live()
		@type = 'live'
	end

	def add_card(card)
		@hand.push(card)
	end

	def show_hand()
		@hand.each{ |card| print card.display() + " " }
		print "\n"
		end
	end

	def bet
	end

	def call
	end

	def raise
	end
end
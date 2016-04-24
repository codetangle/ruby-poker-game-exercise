class Player

	def initialize

		@chips = 0
		@all_in = false
		@type = 'computer'
	end

	def make_player_live()
		@type = 'live'
	end

	def bet
	end

	def call
	end

	def raise
	end
end
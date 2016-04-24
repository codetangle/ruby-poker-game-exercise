class Card

	def initialize(value, suit)
		if value === 14
			@name = 'Ace'
		elsif value === 13
			@name = 'King'
		elsif value === 12
			@name = 'Queen'
		elsif value === 11
			@name = 'Jack'
		elsif value === 10
			@name = 'Ten'
		elsif value === 9
			@name = 'Nine'
		elsif value === 8
			@name = 'Eight'
		elsif value === 7
			@name = 'Seven'
		elsif value === 6
			@name = 'Six'
		elsif value === 5
			@name = 'Five'
		elsif value === 4
			@name = 'Four'
		elsif value === 3
			@name = 'Three'
		elsif value === 2
			@name = 'Two'

		@suit = suit
	end

	def display()
		return @name + @suit
	end
end
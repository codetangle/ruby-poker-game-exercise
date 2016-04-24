class Card

	def initialize(value, suit)
		if value === 14
			@name = 'A'
		elsif value === 13
			@name = 'K'
		elsif value === 12
			@name = 'Q'
		elsif value === 11
			@name = 'J'
		elsif value === 10
			@name = 'T'
		elsif value === 9
			@name = '9'
		elsif value === 8
			@name = '8'
		elsif value === 7
			@name = '7'
		elsif value === 6
			@name = '6'
		elsif value === 5
			@name = '5'
		elsif value === 4
			@name = '4'
		elsif value === 3
			@name = '3'
		elsif value === 2
			@name = '2'
		end

		@suit = suit
	end

	def display()
		return @name + @suit
	end
end


class Deck

	@@suits = ['c', 'd', 'h', 's']

	def initialize()

		@deck = []
		@index = 0

		@@suits.each do |suit|
			14.downto(2) do |value|
				@deck.push(Card.new(value, suit))
			end
		end
	end


	def shuffle()

		@index = 0
		temp_deck = @deck
		@deck = []

		while temp_deck.length > 0
			card = temp_deck.delete_at(rand(0..temp_deck.length-1))
			@deck.push(card)
		end
		puts "Shuffled Deck length #{@deck.length}"
	end


	def deal(num)

		cards = []
		(1..num).each do
			if @index < @deck.length
				cards.push(@deck[@index])
				@index += 1
			else
				raise "The deck is out of cards"
			end
		end

		return cards
	end
end

def show_cards(card_array)

	hand = ""
	card_array.each do |card|
		hand += card.display() + " "
	end
	puts hand
end

# aDeck = Deck.new()
# aDeck.shuffle()
# (1..10).each do
# 	hand = aDeck.deal(5)
# 	show_cards(hand)
# end


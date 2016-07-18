require './Card.rb'

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

	def show_cards(card_array)

		hand = ""
		card_array.each do |card|
			hand += card.display() + " "
		end
		puts hand
	end
end

# aDeck = Deck.new()
# aDeck.shuffle()
# (1..10).each do
# 	hand = aDeck.deal(5)
# 	show_cards(hand)
# end


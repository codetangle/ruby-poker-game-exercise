require './Deck'

class Game
  def initialize
    @type = "Texas Hold'em"
    @deck = Deck.new()
  end

  def start
    puts "Playing a hand of " + @type
    @deck = Deck.new().shuffle()
  end

  def deal_hole_cards
    puts "Dealing 2 hidden cards"
  end

  def deal_flop
    puts "Dealing 3 common cards"
  end

  def deal_turn
    puts "Dealing 1 common card"
  end

  def deal_river
    puts "Dealing 1 common card"
  end
end
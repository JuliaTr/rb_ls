=begin
You are now going to use those classes to create and evaluate 
poker hands. Create a class, PokerHand, that takes 5 cards from a 
Deck of Cards and evaluates those cards as a Poker hand.
You should build your class using the following code skeleton:
=end

class Card
  include Comparable

  attr_reader :rank, :suit

  VALUES = { "Jack" => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset  # array of Card objects
  end

  def draw
    reset if @deck.empty?
    @deck.pop # returns the last element of the array, which is a `Card`
  end

  private

  def reset
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank,suit)
    end

    @deck.shuffle!
  end
end

## Possible solution
class PokerHand
  def initialize(cards)
    @cards = []

    # When we access a key which doesn't exist yet, ruby returns `0`
    # instead of `nil`.
    @rank_count = Hash.new(0)

    5.times do
      # `PokerHand` calls `drqw` on `Deck.new`. This `cards` object
      # has a `draw` method that returns a `Card`.
      # `cards` is a Deck instance here.
      # Ruby calls `Deck#draw`, which returns a `Card` object (built 
      # earlier with `Card.new(rank, suit)` when the deck was created). 
      # Actually calls `Array#draw` an alias of `Array#pop`.
      # Ruby's duck typing:
      card = cards.draw
      @cards << card
      @rank_count[card.rank] += 1
    end
  end

  def print
    puts @cards
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def flush?
    # Five cards of the same suit
    suit = @cards.first.suit
    @cards.all? { |card| card.suit == suit }
  end

  def straight?
    # Five cards in sequence (for example, 4, 5, 6, 7, 8)
    return false if @rank_count.any? { |_, count| count > 1 }

    @cards.min.value == @cards.max.value - 4
  end

  def n_of_a_kind?(number)
    @rank_count.one? { |_, count| count == number }
  end

   def straight_flush?
    # Five cards of the same suit in sequence
    flush? && straight?
  end

  def royal_flush?
    # (if those five are A, K, Q, J, 10; it is a Royal Flush)
    straight_flush? && @cards.min.rank == 10
  end

  def four_of_a_kind?
    # Four cards of the same rank and any one other card
    n_of_a_kind?(4)
  end

  def full_house?
    # Three cards of one rank and two of another
    n_of_a_kind?(3) && n_of_a_kind?(2)
  end

  def three_of_a_kind?
    # Three cards of the same rank
    n_of_a_kind?(3)
  end

  def two_pair?
    # Two cards of one rank and two cards of another
    @rank_count.select { |_, count| count == 2 }.size == 2
  end

  def pair?
    # Two cards of the same rank
    n_of_a_kind?(2)
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,        'Clubs'),
  Card.new(9,        'Clubs'),
  Card.new('Queen',  'Clubs'),
  Card.new(10,       'Clubs'),
  Card.new('Jack',   'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10,     'Hearts'),
  Card.new('Ace',  'Hearts'),
  Card.new(2,      'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3,      'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'

=begin
`Deck` holds many `Card` objects in an internal array.
`Deck#draw` returns one `Card` from that array.
`PokerHand` calls `draw` on whatever it was given (`Deck`, `Array`).
The object given to `PokerHand` is responsible for *how* it returns 
a `Card`; `PokerHand` just uses the returned `Card`'s `rank`, `suit`,
`to_s`.

`PokerHand` uses `cards.draw`.
Deck (or monkey-patched `Array`) provides `draw`.


`Deck` gets `draw` from the `Deck` class.
`Array` gets `drqw` from the monkey-patch.
`Card` never provides a `draw` method at all; it just represents
    a single card.
=end
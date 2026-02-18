=begin
"21" (often Blackjack) is a card game where players aim to 
achieve a hand total closer to 21 than the dealer without 
exceeding it, using 1 deck. Players receive two cards, 
choosing to "hit" (take another) or "stand" (keep). Aces are 
worth 1 or 11, face cards 10, and number cards face value. 

Key Rules and Gameplay:
- Goal: Beat the dealer's hand total without going over 21 ("busting").
- Card Values: Numbered cards are face value; King, Queen, and Jack
are worth 10; Aces are worth 1 or 11.
-Dealer Rules: The dealer typically must "hit" until their cards 
total at least 17.
=end

# Example for possible design to workthrough:
class Card
  def initialize
    # What state does a card need? A suit? A rank?
    # How do we determine its value (e.g., Ace is or 11)?
  end
end

class Deck
  def initialize
    # How does a deck start? With 52 cards.
    # We'll need a collection to hold the cards. An array seems right
  end

  def deal
    # How does this work? Does the deck deal, or a dealer?
    # This method should probably remove a card from a deck and return it.
  end
end

# A parent class for common player/dealer behaviours
class Participant
  def initialize
    # What state do both players and dealers have?
    # A hand of cards? A score?
  end

  def hit; end

  def stay; end

  def busted?; end

  def total
    # Logic to calculate the total value os cards in hand.
  end
end

class Player < Participant
  # Does the player need any state or behaviour that the dealer doesn't?
end

class Dealer < Participant
  # Does the dealer need any different state or behaviour?
  # The "hit until 17" logic will go here.
end

# "Orchestration engine" to run the game
class Game
  def start
    loop do
      deal_cards
      player_turn
      dealer_turn
      compare_hands
      show_result
    end
  end
end

Game.new.start

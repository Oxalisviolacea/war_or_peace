require 'minitest/autorun'
require 'minitest/pride'
require "./lib/deck"
require "./lib/card"
require './lib/player'
require './lib/turn'

class PlayerTurn <Minitest::Test

  def test_it_exists
   card1 = Card.new(:diamond, 'Queen', 12)
   card2 = Card.new(:spade, '3', 3)
   card3 = Card.new(:heart, 'Ace', 14)
   deck = Deck.new([card1, card2, card3])
   player = Player.new('Clarisa', deck)
   turn = Turn.new(player1, player2)

   assert_instance_of Turn, turn
  end
end 

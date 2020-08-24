require 'minitest/autorun'
require 'minitest/pride'
require "./lib/card"
require "./lib/deck"
require './lib/player'
require './lib/turn'
require './lib/play'

class PlayerTest <Minitest::Test
  def test_it_exists
    play = Play.new

    assert_instance_of Play, play
  end
end

#
# def test_has_lost_can_be_false
#   skip
#   card1 = Card.new(:diamond, 'Queen', 12)
#   card2 = Card.new(:spade, '3', 3)
#   card3 = Card.new(:heart, 'Ace', 14)
#   deck = Deck.new([card1, card2, card3])
#   player = Player.new('Clarisa', deck)
#
#   assert_equal false, deck.cards.empty?
# end
#
# def test_has_lost_can_be_true
#   deck = Deck.new([])
#   player = Player.new('Clarisa', deck)
#
#   assert_equal true, deck.cards.empty?
# end

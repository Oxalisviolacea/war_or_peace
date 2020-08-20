require 'minitest/autorun'
require 'minitest/pride'
require "./lib/deck"
require "./lib/card"

class DeckTest <Minitest::Test

  def test_it_exists
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)

    assert_instance_of Deck, deck
  end

#   def test_rank_of_card_at
#     skip
#     card1 = Card.new(:diamond, 'Queen', 12)
#     card2 = Card.new(:spade, '3', 3)
#     card3 = Card.new(:heart, 'Ace', 14)
#     cards = [card1, card2, card3]
#     deck = Deck.new(cards)
# #somehow get one or two?
#     assert_equal [] deck.rank_of_card_at
#   end

  def test_high_ranking_cards
     card1 = Card.new(:diamond, 'Queen', 12)
     card2 = Card.new(:spade, '3', 3)
     card3 = Card.new(:heart, 'Ace', 14)
     cards = [card1, card2, card3]
     deck = Deck.new(cards)

   assert_equal [card1, card3], deck.high_ranking_cards
  end

  def percent_high_ranking
     deck = Deck.new(cards)

     assert_equal 66.67, deck.percent_high_ranking
  end

  def test_remove_card
     card1 = Card.new(:diamond, 'Queen', 12)
     card2 = Card.new(:spade, '3', 3)
     card3 = Card.new(:heart, 'Ace', 14)
     cards = [card1, card2, card3]
     deck = Deck.new(cards)

     assert_equal [card2, card3], deck.remove_card
  end

  def test_add_card
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:club, '5', 5)
    cards = [card1, card2, card3, card4]
    deck = Deck.new(cards)

    assert_equal cards, deck.add_card
  end
end

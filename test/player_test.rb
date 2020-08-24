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

  def test_if_it_has_attributes
    play = Play.new
    play.start

    assert_equal Play.create_52_card_deck, Play.cards_52
  end

  def test_cards_shuffled

   assert_not_equal cards_52[0..25], player1.card.deck
  end

  def test_deal_cards
    assert_equal 26, player1.deck.cards.count
    assert_equal 26, player2.deck.cards.count
  end

  def test_intro_text
   assert_equal "Welcome to War! (or Peace) This game will be played with 52 cards.
   The players today are Megan and Aurora.
   Type 'GO' to start the game!
   ------------------------------------------------------------------", Play.intro_text
  end

  def test_players
    assert_equal player1,
  end

  def test_prompt_for_start
  end

  def test_game_loop
  end

  def test_state_winner
  end
end

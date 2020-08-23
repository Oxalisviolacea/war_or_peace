class Turn
  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
   @player1 = player1
   @player2 = player2
   @spoils_of_war  =  []
   @discard_deck = []
  end

  def type
    if player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0) &&
      player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction
    elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
      :war
    elsif player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      :basic
    end
  end

  # long way of referencing this: player2.deck.cards.rank.rank_of_card_at(0)
  ## the cards class is where rank_of_card_at is stored, but rank is written into the rank_of_card_at method

  def winner
    if type == :basic
      if player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
         player1
      else
         player2
      end
    elsif type == :war
       if player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
          player1
       else
          player2
        end
    elsif type == :mutually_assured_destruction
         "No winner"
    end
  end

  def pile_cards
    if type == :basic
      @spoils_of_war << player1.deck.remove_card
      @spoils_of_war << player2.deck.remove_card
    elsif type == :war
      3.times {@spoils_of_war << player1.deck.remove_card}
      3.times {@spoils_of_war << player2.deck.remove_card}
    elsif type == :mutually_assured_destruction
      3.times {@discard_deck << player1.deck.remove_card}
      3.times {@discard_deck << player2.deck.remove_card}
    end
  end

  def award_spoils(winner)
    @spoils_of_war.each do |card|
      winner.deck.cards << card
    end
  end

  def empty_spoils
    @spoils_of_war = []
  end
  # using winner = turn.winner from the local varible in test_basic_award_spoils
end
#  @spoils_of_war = [] - might need later because it's not emptying after turn
# hard coded test_basic_award_spoils

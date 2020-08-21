class Turn
  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
   @player1 = player1
   @player2 = player2
   @turn_type = turn_type
  end

  def type
    if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      turn_type = "basic"
    elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
      turn_type = "war"
    elsif
      player1.deck.rank_of_card_at(0) == != player2.deck.rank_of_card_at(0) &&
      player1.deck.rank_of_card_at(2) == != player2.deck.rank_of_card_at(2) &&
      turn_type = "mutually_assured_destruction"
    end
end

  def winner
    if turn_type = "basic"
      if player1.deck.value.rank_of_card_at(0) > player2.deck.value.rank_of_card_at(0)
         return player1
      else
         return player2
    elsif turn_type = "war"
       if player1.deck.value.rank_of_card_at(2) > player2.deck.value.rank_of_card_at(2)
          return player1
       else
          return player2
    else turn_type = ""
  end

  def pile_cards
    if turn_type == "basic"
      player1.deck.rank_of_card_at(0) >> spoils_of_war
      player2.deck.rank_of_card_at(0) >> spoils_of_war
    elsif turn_type == "war"
      player1.deck.rank_of_card_at(0..3) >> spoils_of_war
      player1.deck.rank_of_card_at(0..3).remove_card
      player2.deck.rank_of_card_at(0..3) >> spoils_of_war
      player2.deck.rank_of_card_at(0..3).remove_card
    elsif turn_type == "mutually_assured_destruction"
      player1.deck.rank_of_card_at(0..3).remove_card
      player2.deck.rank_of_card_at(0..3).remove_card
    else
      puts "I'm confused!"
    end
  end
end

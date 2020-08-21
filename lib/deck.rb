# require "pry"; binding.pry
class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
    @high_ranking_cards = []
  end

  def rank_of_card_at(position)
   @cards[position].rank
  end

  def high_ranking_cards
    return @high_ranking_cards unless @high_ranking_cards.empty?
    @cards.each do |card|
      if card.rank > 11
        @high_ranking_cards << card
      end
    end
    @high_ranking_cards
  end

  def high_ranking_cards
    return @high_ranking_cards unless @high_ranking_cards.empty?
    @cards.select do |card|
      card.rank > 11
    end
  end

  def percent_high_ranking
    pct_high_ranking = (count.to_f/@cards.count.to_f)*100
    pct_high_ranking
  end

  def remove_card
    @cards.drop(1)
  end

  def add_card
    @cards << cards
  end
end

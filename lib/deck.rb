# require "pry"; binding.pry
class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(position)
   @cards[position].rank
  end

  def high_ranking_cards
    return @high_rank_cards unless @high_rank_cards.empty?
    @cards.select do |card|
      card.rank > 11
    end
  end

  def percent_high_ranking
    pct_high_ranking = ((high_ranking_cards.count.to_f/@cards.count.to_f)*100).round(2)
    pct_high_ranking
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards.push(card)
  end
end

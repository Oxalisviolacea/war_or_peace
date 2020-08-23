class Play
  attr_reader

  def initialize
   @cards_52 = cards_52
  end
  def create_52_card_deck
    @cards_52 = {
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9,
      '10' => 10,
      'Jack' => 11,
      'Queen' => 12,
      'King' => 13,
      'Ace' => 14
      }

    cards_52.each do |suit|
      cards_52[:heart]
    end
    cards_52.each do |suit|
      cards_52[:diamond]
    end
    cards_52.each do |suit|
      cards_52[:club]
    end
    cards_52.each do |suit|
      cards_52[:spaid]
    end
    p cards_52
  end
end
  # def shuffle
  #
  # def play_game
  #   p "Do you want to play war? Yes or No"
  #   user_question = gets.chomp
  #   if user_question == "Yes"

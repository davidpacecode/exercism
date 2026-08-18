module Blackjack
  def self.parse_card(card)
    case card
    when "ace"
      11
    when "ten", "jack", "queen", "king"
      10
    when "two"
      2
    when "three"
      3
    when "four"
      4
    when "five"
      5
    when "six"
      6
    when "seven"
      7
    when "eight"
      8
    when "nine"
      9
    else
      0
    end
  end

  def self.card_range(card1, card2)
    hand = parse_card(card1) + parse_card(card2)
    case hand
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    case
    when card1 == "ace" && card2 == "ace"
      "P"
    when card_range(card1, card2) == "blackjack"
      parse_card(dealer_card) >= 10 ? "S" : "W"
    when card_range(card1, card2) == "high"
      "S"
    when card_range(card1, card2) == "mid"
      parse_card(dealer_card) >= 7 ? "H" : "S"
    when card_range(card1, card2) == "low"
      "H"
    end
  end
end

puts Blackjack.parse_card("ace")

puts Blackjack.card_range("ace", "king")

puts Blackjack.first_turn("ace", "ace", "two")

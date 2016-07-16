require 'pry'

SUITS = ['D', 'C', 'H', 'S']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def initialize_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      deck << [suit, card]
    end
  end
  deck.shuffle!
end

def prompt(msg)
  puts "=> #{msg}"
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'A' }.each do
    if sum > 21
      sum -= 10
    end
  end

  sum
end

def deal_card(deck, hand)
  hand << deck.pop
end

def dealer_turn(deck, cards)
  loop do
    break if total(cards) > 17
    deal_card(deck, cards)
  end
end

def detect_winner(player_cards, dealer_cards)
  if busted?(dealer_cards) || total(player_cards) > total(dealer_cards)
    'Player wins!'
  else
    'Dealer wins!'
  end
end

def display_results(player, computer)
  prompt("Dealer has: #{computer[0][1]} and unknown card")
  prompt("You have: #{player.map { |card| card[1] }.join(', ')}")
end

def busted?(cards)
  true if total(cards) > 21
end

deck = initialize_deck
player_cards = []
dealer_cards = []

2.times do
  deal_card(deck, player_cards)
  deal_card(deck, dealer_cards)
end

loop do
  display_results(player_cards, dealer_cards)
  break if busted?(player_cards)
  puts "hit or stay?"
  answer = gets.chomp
  break if answer == 'stay'
  deal_card(deck, player_cards)
end

if busted?(player_cards)
  prompt("Sorry, you busted!")
else
  puts "You chose to stay!"
  dealer_turn(deck, dealer_cards)
  prompt(detect_winner(player_cards, dealer_cards).to_s)
  prompt("Dealer had: #{dealer_cards.map { |card| card[1] }.join(', ')}")
end

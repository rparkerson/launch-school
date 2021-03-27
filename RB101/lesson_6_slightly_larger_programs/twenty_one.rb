require 'pry'

SUITS = ['C', 'D', 'H', 'S']
VALUES = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
NUMBER_VALUES = {
  'A' => 11, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10
}
PLAYER = 'Player'
COMPUTER = 'Computer'
FACE_DOWN_CARD = [true]

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  SUITS.reduce([]) { |deck, suit| deck + VALUES.zip([suit] * VALUES.size) }
end

def initialize_cards
  { PLAYER => [], COMPUTER => [] }
end

def deal!(deck)
  deal = deck.sample(1)
  deck.delete(deal.first)
  deal
end

def deal_starting_cards(deck, cards)
  loop do
    cards[COMPUTER] += deal!(deck)
    cards[PLAYER] += deal!(deck)
    break if cards[PLAYER].count == 2
  end
end

def total(cards)
  total =
  cards.reduce(0) do |sum, card|
    sum + NUMBER_VALUES[card[0]]
  end
  
  cards.select { |card| card[0] == 'A' }.count.times do
    total -= 10 if total > 21
  end
  
  total
end

def display_table(deck, cards)
  # system 'clear'
  unless FACE_DOWN_CARD[0]
    puts "Computer's Cards (Score: #{total(cards[COMPUTER])})"
    cards[COMPUTER].each { |card| print card.to_s + ' ' }
  else 
    puts "Computer's Cards"
    print cards[COMPUTER][0].to_s + " [        ]"
  end
  
  puts 
  puts
  puts
  puts
  puts "Player's Cards (Score: #{total(cards[PLAYER])})"
  cards[PLAYER].each { |card| print card.to_s + ' ' }
  puts 
end

def player_turn(deck, cards)
  display_player_total(cards)

  player_hit_or_stay(deck, cards)

  if busted?(cards)
    bust_prompt(cards)
  else
    prompt "You chose to stay!"
  end
end

def player_hit_or_stay(deck, cards)
  loop do
    prompt "Do you want to hit or stay? (h s)"
    answer = gets.chomp.downcase

    next prompt "Invalid answer." unless valid_answer?(answer)

    break if answer == 'stay' || answer == 's'
    hit!(deck, cards, PLAYER)
    prompt cards[PLAYER].to_s
    break if busted?(cards)
    display_player_total(cards)
  end
end

def computer_turn(deck, cards)
  FACE_DOWN_CARD[0] = false
  return if busted?(cards)
  display_computer_total(cards)

  computer_hit_or_stay(deck, cards)

  if busted?(cards)
    computer_bust_prompt(cards)
  else
    prompt "Computer stays."
  end
end

def computer_hit_or_stay(deck, cards)
  while total(cards[COMPUTER]) < 17
    prompt "Computer hits."
    hit!(deck, cards, COMPUTER)
    break if busted?(cards)
    display_computer_total(cards)
  end
end

def display_player_total(cards)
  prompt "Your total is #{total(cards[PLAYER])}."
end

def display_computer_total(cards)
  prompt "The Computer's total is #{total(cards[COMPUTER])}."
end

def hit!(deck, cards, card_owner)
  cards[card_owner] += deal!(deck)
end

def valid_answer?(answer)
  answer == 'stay' || answer == 's' || answer == 'hit' || answer == 'h'
end

def busted?(cards)
  total(cards[PLAYER]) > 21 || total(cards[COMPUTER]) > 21
end

def bust_prompt(cards)
  prompt "Your total is #{total(cards[PLAYER])}, you busted!"
end

def computer_bust_prompt(cards)
  prompt "The Computer's total is #{total(cards[COMPUTER])} and they busted!"
end

def calculate_results(deck, cards)
  player_score = total(cards[PLAYER])
  computer_score = total(cards[COMPUTER])

  return (player_score > 21 ? COMPUTER : PLAYER) if busted?(cards)
  return player_score < computer_score ? COMPUTER : PLAYER
  return 'Tie' if player_score == computer_score
  nil
end

def display_results(winner)
  case winner
  when COMPUTER
    prompt "The Computer is the winner!"
  when PLAYER
    prompt "Congratulations, you have won!"
  when 'tie'
    prompt "The game ends in a draw!"
  end
end

deck = initialize_deck
cards = initialize_cards
deal_starting_cards(deck, cards)
display_table(deck, cards)

player_turn(deck, cards)
computer_turn(deck, cards)

winner = calculate_results(deck, cards)
display_table(deck, cards)
display_results(winner) if winner

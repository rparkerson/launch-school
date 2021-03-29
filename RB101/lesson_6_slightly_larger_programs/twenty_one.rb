VALUES = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
SUITS = ['C', 'D', 'H', 'S']
NUMBER_VALUES = {
  'A' => 11, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10
}
PLAYER = 'Player'
DEALER = 'Dealer'
SCORE_LIMIT = 21
HIT_LIMIT = SCORE_LIMIT - 4
ROUNDS_TO_WIN = 5

def prompt(message)
  puts "=> #{message}"
end

def display_greeting
  prompt "Welcome to Twenty-One!"
  prompt "Compete against the dealer, and try to get to #{SCORE_LIMIT} \
without going over."
  prompt "If you go over #{SCORE_LIMIT}, you \"bust\" and lose."
  prompt "The first to win #{ROUNDS_TO_WIN} rounds is the champion!"
  prompt "Press Enter to start playing..."
  gets
end

def initialize_deck
  VALUES.product(SUITS).shuffle
end

def initialize_cards
  { PLAYER => [], DEALER => [] }
end

def initialize_scoreboard
  { PLAYER => 0, DEALER => 0 }
end

def deal_starting_cards(deck, cards)
  loop do
    cards[DEALER] << deck.pop
    cards[PLAYER] << deck.pop
    break if cards[PLAYER].count == 2
  end
end

def total(cards)
  total =
    cards.reduce(0) do |sum, card|
      sum + NUMBER_VALUES[card[0]]
    end

  cards.select { |card| card[0] == 'A' }.count.times do
    total -= 10 if total > SCORE_LIMIT
  end

  total
end

def display_table(cards, face_down_card = false)
  system 'clear'
  puts "====================="
  display_dealer_cards(cards, face_down_card)
  puts
  puts
  puts
  puts
  display_player_cards(cards)
  puts "====================="
  puts
end

def display_dealer_cards(cards, face_down_card)
  if !face_down_card
    puts "Dealer's Cards (Score: #{total(cards[DEALER])})"
    cards[DEALER].each { |card| print card.to_s + ' ' }
  else
    puts "Dealer's Cards (Visible Score: #{visible_score(cards)})"
    print cards[DEALER][0].to_s + " [        ]"
  end
end

def visible_score(cards)
  visible_card_value = cards[DEALER][0][0]
  if visible_card_value == 'A'
    "1 or 11"
  else
    NUMBER_VALUES[visible_card_value]
  end
end

def display_player_cards(cards)
  cards[PLAYER].each { |card| print card.to_s + ' ' }
  puts
  puts "Player's Cards (Score: #{total(cards[PLAYER])})"
end

def player_turn(deck, cards)
  display_table(cards, true)
  display_player_total(cards)

  player_hit_or_stay(deck, cards)

  if !busted?(cards)
    prompt "You chose to stay!"
    prompt "Dealer's turn next..."
  end
end

def player_hit_or_stay(deck, cards)
  loop do
    prompt "Do you want to hit or stay? ('h' 's')"
    answer = gets.chomp.downcase

    next prompt "Invalid answer." unless valid_answer?(answer)

    break if answer == 'stay' || answer == 's'

    hit!(deck, cards, PLAYER)
    face_down_card = true unless busted?(cards)
    display_table(cards, face_down_card)
    prompt "You hit!"
    display_player_total(cards)

    break if busted?(cards)
  end
end

def dealer_turn(deck, cards)
  return if busted?(cards)
  sleep(2)

  display_table(cards)
  display_dealer_total(cards)
  sleep(2)

  dealer_hit_or_stay(deck, cards)

  prompt "Dealer stays." if !busted?(cards)
end

def dealer_hit_or_stay(deck, cards)
  while total(cards[DEALER]) < HIT_LIMIT
    prompt "Dealer hits."
    sleep(2)
    hit!(deck, cards, DEALER)
    display_table(cards)
    display_dealer_total(cards)
    break if busted?(cards)
  end
end

def display_player_total(cards)
  prompt "Your total is #{total(cards[PLAYER])}."
end

def display_dealer_total(cards)
  prompt "The Dealer's total is #{total(cards[DEALER])}."
end

def hit!(deck, cards, card_owner)
  cards[card_owner] << deck.pop
end

def valid_answer?(answer)
  answer == 'stay' || answer == 's' || answer == 'hit' || answer == 'h'
end

def busted?(cards)
  total(cards[PLAYER]) > SCORE_LIMIT || total(cards[DEALER]) > SCORE_LIMIT
end

def calculate_results(cards)
  player_score = total(cards[PLAYER])
  dealer_score = total(cards[DEALER])

  if busted?(cards)
    return player_score > SCORE_LIMIT ? :player_busts : :dealer_busts
  end
  return :tie if player_score == dealer_score

  player_score < dealer_score ? DEALER : PLAYER
end

def display_results(cards, scoreboard)
  result = calculate_results(cards)

  case result
  when :player_busts
    prompt "You bust! Dealer wins the round!"
  when :dealer_busts
    prompt "Dealer busts! You win the round!"
  when :tie
    prompt "The round ends in a tie!"
  when DEALER
    prompt "The Dealer wins the round!"
  when PLAYER
    prompt "You have won the round!"
  end

  update_scoreboard(scoreboard, result)
  display_scoreboard(scoreboard)
end

def update_scoreboard(scoreboard, result)
  case result
  when :player_busts
    scoreboard[DEALER] += 1
  when DEALER
    scoreboard[DEALER] += 1
  when :dealer_busts
    scoreboard[PLAYER] += 1
  when PLAYER
    scoreboard[PLAYER] += 1
  end
end

def display_scoreboard(scoreboard)
  puts
  prompt "Current wins: Player: #{scoreboard[PLAYER]} Dealer: \
#{scoreboard[DEALER]}"
end

def five_wins?(scoreboard)
  scoreboard[PLAYER] == ROUNDS_TO_WIN || scoreboard[DEALER] == ROUNDS_TO_WIN
end

def display_champion(scoreboard)
  puts
  if scoreboard[PLAYER] == ROUNDS_TO_WIN
    prompt "Congratulations! You are the first to #{ROUNDS_TO_WIN} wins and\
    are the champion!"
  else
    prompt "The Dealer won #{ROUNDS_TO_WIN} rounds first and is the champion!"
  end
end

def play_again?
  puts
  prompt "Would you like to play again? (y or n)"
  choice = gets.chomp
  !(choice == 'n' || choice == 'no')
end

def display_farwell
  prompt "Thanks for playing Twenty-One! Goodbye!"
end

display_greeting
scoreboard = initialize_scoreboard

loop do
  deck = initialize_deck
  cards = initialize_cards

  deal_starting_cards(deck, cards)

  player_turn(deck, cards)
  dealer_turn(deck, cards)

  display_results(cards, scoreboard)

  break display_champion(scoreboard) if five_wins?(scoreboard)
  break unless play_again?
end

display_farwell

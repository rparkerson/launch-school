require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [7, 5, 3]
]

def prompt(str)
  puts "=> #{str}"
end

def display_greeting
  prompt "Welcome to Tic-Tac-Toe! You are #{PLAYER_MARKER}'s and go first!"
  prompt "The first to win 5 matches wins the game!"
end

# rubocop:disable Metrics/AbcSize
def display_board(board)
  system 'clear'
  puts "You are #{PLAYER_MARKER}'s. Computer is #{COMPUTER_MARKER}'s."
  puts ""
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def initialize_score
  score = {'Player' => 0, 'Computer' => 0}
end

def display_board_options
  board_options = initialize_board
  (1..9).each { |num| board_options[num] = num }
  display_board(board_options)
end

def empty_squares(board)
  board.keys.select { |key| board[key] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0..1 then arr.join
  when 2 then arr.join(" #{word} ")
  else 
    leading_str = arr[0, (arr.size - 2)].join(delimiter)
    trailing_str = arr[-2, 2].join(" #{word} ")
    leading_str + delimiter + trailing_str
  end
end

def player_choice(board)
  prompt "Choose a square: (#{joinor(empty_squares(board))})"
  gets.to_i
end

def choice_validator(choice, board)
  loop do
    if board.include?(choice)
      break if board[choice] == INITIAL_MARKER
      prompt "Please pick an empty square."
    else
      prompt "Sorry, that's not a valid choice."
    end

    choice = gets.to_i
  end
  choice
end

def player_turn(boolean, board)
  return unless boolean

  choice = player_choice(board)

  valid_choice = choice_validator(choice, board)
  board[valid_choice] = PLAYER_MARKER

  display_board(board)
end

def computer_turn(boolean, board)
  return if boolean || board_check(board) != ''
  
  computer_choice = get_computer_choice(board)
  board[computer_choice] = COMPUTER_MARKER
  
  display_board(board)
end

def get_computer_choice(board)
  loop do
    computer_choice = rand(1..9)
    break computer_choice if board[computer_choice] == INITIAL_MARKER
  end
end

def player_turn?(board)
  return true if board.values.all?(INITIAL_MARKER)
  board.values.count(COMPUTER_MARKER) == board.values.count(PLAYER_MARKER)
end

def winning_combo?(arr)
  WINNING_LINES.any? do |sub_arr|
    (0..2).all? { |index| arr.include?(sub_arr[index]) }
  end
end

def current_markers(board, marker)
  board.map { |key, value| key if value == marker }
end

def board_check(board)
  if winning_combo?(current_markers(board, PLAYER_MARKER))
    'Player'
  elsif winning_combo?(current_markers(board, COMPUTER_MARKER))
    'Computer'
  elsif empty_squares(board).empty?
    'Tie'
  else
    ''
  end
end

def tally_score(score, winner)
  score[winner] += 1
end

def display_score(score)
  prompt "Current score: Player: #{score['Player']}, Computer: \
#{score['Computer']}"
end

def continue_playing_or_exit
  prompt "Press Enter to continue to the next round! (q to quit)"
  choice = gets.chomp.downcase
  if choice == 'q' || choice == 'quit'
    display_farewell
    exit
  end
end

def winner?(score)
  score.values.include?(5)
end

def display_match_results(winner)
  case winner
  when 'Player'
    prompt 'Tic-Tac-Toe three in a row! Congratulations you won the match!'
  when 'Computer'
    prompt 'The Computer won this match! Better luck next time.'
  when 'Tie'
    prompt 'The match ends in a Tie!'
  end
end

def display_final_results(score)
  if score['Player'] > score['Computer']
    prompt "Congratulations, you won 5 matches and are the Tic-Tac-Toe \
Grand Champion!"
  else
    prompt 'The Computer has won the best of 5 game!'
  end
end

def replay?
  prompt "Play another best of 5 game? (y or n)"
  choice = gets.chomp.downcase
  !(choice == 'no' || choice == 'n')
end

def display_farewell
  prompt "Thanks for playing! Goodbye!"
end

loop do
display_board_options
display_greeting
score = initialize_score

  loop do
    board = initialize_board
    winner = ''
    #player_turn? = true
    loop do
      player_turn((player_turn?(board)), board)
      winner = board_check(board)

      computer_turn((player_turn?(board)), board)
      winner = board_check(board)

      break unless winner.empty?
    end

    tally_score(score, winner)
    display_match_results(winner)
    display_score(score)
    break if winner?(score)
    continue_playing_or_exit
    display_board_options
  end

  display_final_results(score)
  replay = replay?
  break unless replay
end

display_farewell

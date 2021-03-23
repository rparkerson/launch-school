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

def greeting
  prompt "Welcome to Tic-Tac-Toe! You are X's and go first! "
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}'s. Computer is #{COMPUTER_MARKER}'s."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def display_board_options
  board_options = initialize_board
  (1..9).each { |num| board_options[num] = num }
  display_board(board_options)
end

def empty_squares(board)
  board.keys.select { |key| board[key] == INITIAL_MARKER }
end

def player_choice(board)
  prompt "Choose a square: (#{empty_squares(board).join(', ')})"
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

def player_turn?(board)
  return true if board.values.all?(INITIAL_MARKER)
  board.values.count(COMPUTER_MARKER) == board.values.count(PLAYER_MARKER)
end

def winning_combo?(arr)
  WINNING_LINES.any? do |sub_arr|
    (0..2).all? { |index| arr.include?(sub_arr[index]) }
  end
end

def board_check(board)
  x_arr = board.map { |key, value| key if value == PLAYER_MARKER }
  o_arr = board.map { |key, value| key if value == COMPUTER_MARKER }
  binding.pry
  if winning_combo?(x_arr)
    'player'
  elsif winning_combo?(o_arr)
    'computer'
  elsif empty_squares(board).empty?
    'tie'
  else
    ''
  end
end

def get_computer_choice(board)
  loop do
    computer_choice = rand(1..9)
    break computer_choice if board[computer_choice] == INITIAL_MARKER
  end
end

def display_results(result)
  case result
  when 'player'
    prompt 'Tic-Tac-Toe three in a row! Congratulations you won!'
  when 'computer'
    prompt 'The Computer won! Better luck next time.'
  when 'tie'
    prompt 'The game ends in a tie!'
  end
end

def replay?
  prompt "Play again? (y or n)"
  choice = gets.chomp.downcase
  choice == 'no' || choice == 'n' ? false : true
end

def display_farewell
  prompt "Thanks for playing! Goodbye!"
end

loop do
  display_board_options
  greeting

  board = initialize_board
  winner = ''
  loop do
    player_turn((player_turn?(board)), board)
    winner = board_check(board)

    computer_turn((player_turn?(board)), board)
    winner = board_check(board)

    break unless winner.empty?
  end

  display_results(winner)
  replay = replay?
  break unless replay
end

display_farewell

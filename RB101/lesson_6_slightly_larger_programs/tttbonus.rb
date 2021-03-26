INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MATCHES_TO_WIN = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7],
                 [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
PLAYER = 'Player'
COMPUTER = 'Computer'
FIRST_MOVE = ['choose']
MIDDLE_SQUARE = 5

def prompt(msg)
  puts "=> #{msg}"
end

def display_greeting
  prompt "Welcome to Tic-Tac-Toe!"
  prompt "Squares are numbered 1-9. The first to win 5 matches wins the game!"
end

def first_move_prompt
  prompt "Choose who goes first? ('player' or 'computer')"
  choose_first_move!
end

def choose_first_move!
  choice = nil
  loop do
    choice = gets.chomp.downcase
    if choice == 'p' || choice == 'player'
      break choice = PLAYER
    elsif choice == 'computer' || choice == 'c'
      break choice = COMPUTER
    else
      prompt "Please choose either 'player' or 'computer' (p or c)."
    end
  end
  FIRST_MOVE[0] = choice
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(board, score)
  system 'clear'
  puts "You are #{PLAYER_MARKER}'s. Computer is #{COMPUTER_MARKER}'s."
  puts display_score(score)
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
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def display_board_options(score)
  board_options = initialize_board
  (1..9).each { |num| board_options[num] = num }
  display_board(board_options, score)
end

def initialize_score
  { PLAYER => 0, COMPUTER => 0 }
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
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

def player_places_piece!(board)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(board))}):"
    square = gets.chomp
    if square_valid?(square)
      square = square.to_i
      break if empty_squares(board).include?(square)
    end
    prompt "Sorry, that's not a valid choice."
  end
  board[square] = PLAYER_MARKER
end

def square_valid?(square)
  square.to_i.to_s == square
end

def computer_places_piece!(board)
  square = nil
  square = computer_offense(board, square)

  if !square
    square = computer_defense(board, square)
  end

  square = MIDDLE_SQUARE if !square && board[MIDDLE_SQUARE] == INITIAL_MARKER
  square = empty_squares(board).sample if !square

  board[square] = COMPUTER_MARKER
end

def computer_offense(board, square)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, COMPUTER_MARKER)
    break if square
  end
  square
end

def computer_defense(board, square)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, PLAYER_MARKER)
    break if square
  end
  square
end

def find_at_risk_square(line, board, marker)
  board_values_line = board.values_at(line[0], line[1], line[2])
  if board_values_line.count(marker) == 2 &&
     board_values_line.count(INITIAL_MARKER) == 1

    return line[board_values_line.index(INITIAL_MARKER)]
  end
  nil
end

def place_piece!(board, current_player)
  if current_player == PLAYER
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == PLAYER ? COMPUTER : PLAYER
end

def play_single_match(board, score, current_player)
  loop do
    display_board(board, score)

    place_piece!(board, current_player)
    current_player = alternate_player(current_player)

    break if someone_won?(board) || board_full(board)
  end
end

def board_full(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_match_winner(board)
end

def detect_match_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return PLAYER
    elsif board.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return COMPUTER
    end
  end
  nil
end

def display_match_winner(board)
  if someone_won?(board)
    prompt "#{detect_match_winner(board)} won the match!"
  else
    prompt "It's a tie!"
  end
end

def tally_score(score, winner)
  score[winner] += 1 unless winner.nil?
end

def display_score(score)
  "Current Score: #{PLAYER}: #{score[PLAYER]} #{COMPUTER}: \
#{score[COMPUTER]}"
end

def replay?
  prompt "Press Enter to continue to the next round! (q to quit)"
  choice = gets.chomp.downcase
  !(choice == 'q' || choice == 'quit')
end

def game_winner?(score)
  score[PLAYER] == MATCHES_TO_WIN || score[COMPUTER] == MATCHES_TO_WIN
end

def game_winner_prompt(score)
  prompt "#{score.key(MATCHES_TO_WIN)} is the first to #{MATCHES_TO_WIN}\
 and wins the game!"
end

def display_farewell
  prompt "Thanks for playing! Goodbye!"
end

score = initialize_score
display_board_options(score)
display_greeting
first_move_prompt

loop do
  board = initialize_board
  current_player = FIRST_MOVE.first

  play_single_match(board, score, current_player)

  tally_score(score, detect_match_winner(board))
  display_board(board, score)
  display_match_winner(board)
  prompt display_score(score)

  break game_winner_prompt(score) if game_winner?(score)
  break unless replay?
end

display_farewell

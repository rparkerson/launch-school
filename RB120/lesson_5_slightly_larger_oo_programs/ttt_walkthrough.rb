class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                   [1, 4, 7], [2, 5, 8], [3, 6, 9],
                   [1, 5, 9], [7, 5, 3]]

  attr_reader :squares

  def initialize
    @squares = {}
    reset
  end

  def get_square_at(key)
    squares[key]
  end

  def set_square_at(key, marker)
    squares[key].marker = marker
  end

  def unmarked_squares
    squares.select { |_, square| square.unmarked? }.keys
  end

  def full?
    unmarked_squares.empty?
  end

  def someone_won?
    !!detect_winner
  end

  def detect_winner
    if three_in_a_row?(TTTGame::HUMAN_MARKER)
      TTTGame::HUMAN_MARKER
    elsif three_in_a_row?(TTTGame::COMPUTER_MARKER)
      TTTGame::COMPUTER_MARKER
    end
  end

  def three_in_a_row?(marker)
    WINNING_LINES.any? do |line|
      line.all? { |square_number| squares[square_number].marker == marker }
    end
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end
end
 
class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize
    @marker = INITIAL_MARKER
  end

  def to_s
    marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end
end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
  end

  def display_welcome_message
    puts "Welcome to Tic-tac-toe!"
    puts
  end

  def display_goodbye_message
    puts "Thanks for playing Tic-tac-toe! Goodbye!"
  end

  def display_board(clear = true)
    system("clear") if clear
    puts "You're a #{HUMAN_MARKER}. Computer is a #{COMPUTER_MARKER}"
    puts
    puts "     |     |     "
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}  |  "\
      "#{board.get_square_at(3)}  "
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}  |  "\
      "#{board.get_square_at(6)}  "
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}  |  "\
      "#{board.get_square_at(9)}  "
    puts "     |     |     "
    puts
  end

  def human_moves
    square_number = nil
    loop do

      puts "Please choose a square: (#{board.unmarked_squares.join(', ')})"
      square_number = gets.chomp.to_i
      break if board.unmarked_squares.include?(square_number)
      puts "Sorry, that is not a valid choice."
    end
    board.set_square_at(square_number, human.marker)
  end

  def computer_moves
    board.set_square_at(board.unmarked_squares.sample, computer.marker)
  end

  def display_result
    display_board
    result = board.detect_winner
    puts (result ? "#{result} is the winner!" : "It's a tie!") 
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase.strip
      break if ['yes', 'y', 'no', 'n'].include?(answer)
      puts "Sorry, please choose 'y' or 'n'."
    end
    ['yes', 'y'].include?(answer)
  end

  def play
    system("clear")
    display_welcome_message
    loop do
      display_board(false)

      loop do
        human_moves
        break if board.someone_won? || board.full?

        computer_moves
        break if board.someone_won? || board.full?

        display_board
      end

      display_result
      break unless play_again?
      system("clear")
      board.reset
    end
      display_goodbye_message
  end
end

game = TTTGame.new
game.play

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                   [1, 4, 7], [2, 5, 8], [3, 6, 9],
                   [1, 5, 9], [7, 5, 3]]

  def initialize
    @squares = {}
    reset
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  def draw
    puts "     |     |     "
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}  "
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}  "
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}  "
    puts "     |     |     "
  end
  # rubocop:enable Metrics/AbcSize

  def []=(number, marker)
    @squares[number].marker = marker
  end

  def unmarked_squares
    @squares.select { |_, square| square.unmarked? }.keys
  end

  def full?
    unmarked_squares.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end

    nil
  end

  private

  def three_identical_markers?(squares)
    markers = squares.map(&:marker)
    markers.uniq.size == 1 && squares.all?(&:marked?)
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker = INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    marker
  end

  def marked?
    marker != INITIAL_MARKER
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
  FIRST_TO_MOVE = HUMAN_MARKER

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_marker = FIRST_TO_MOVE
  end

  def play
    clear_screen_and_display_board
    display_welcome_message
    main_game
    display_goodbye_message
  end

  private

  attr_reader :board, :human, :computer

  def display_welcome_message
    puts "Welcome to Tic-tac-toe!"
    puts
  end

  def display_goodbye_message
    puts "Thanks for playing Tic-tac-toe! Goodbye!"
  end

  def clear
    system("clear")
  end

  def display_board
    puts "You're a #{HUMAN_MARKER}. Computer is a #{COMPUTER_MARKER}"
    puts
    board.draw
    puts
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_moves
    square_number = nil
    loop do
      puts "Please choose a square: (#{board.unmarked_squares.join(', ')})"
      square_number = gets.chomp.to_i
      break if board.unmarked_squares.include?(square_number)
      puts "Sorry, that is not a valid choice."
    end

    board[square_number] = human.marker
  end

  def computer_moves
    board[board.unmarked_squares.sample] = computer.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = COMPUTER_MARKER
    else
      computer_moves
      @current_marker = HUMAN_MARKER
    end
  end

  def human_turn?
    @current_marker == HUMAN_MARKER
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_result
    clear_screen_and_display_board
    result = board.winning_marker
    puts result ? "#{result} is the winner!" : "It's a tie!"
    puts
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

  def reset
    board.reset
    @current_marker = FIRST_TO_MOVE
    clear_screen_and_display_board
  end

  def display_play_again_message
    puts "Let's play again!"
    puts
  end

  def main_game
    loop do
      player_move
      display_result
      break unless play_again?
      reset
      display_play_again_message
    end
  end
end

game = TTTGame.new
game.play

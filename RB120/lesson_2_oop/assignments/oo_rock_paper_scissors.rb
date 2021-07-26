class Player
  attr_accessor :move, :name

  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil
    set_name
  end

  def set_name
    self.name =
      if human?
        set_human_name
      else
        set_computer_name
      end
  end

  def set_human_name
    loop do
      puts "Please choose a player name"
      n = gets.chomp
      break n unless n.empty?
      puts "Sorry, must enter a value."
    end
  end

  def set_computer_name
    ['C-3PO', 'R2-D2', 'Optimus Prime', 'Megatron', 'HAL'].sample
  end

  def choose
    self.move = (human? ? valid_move : ['rock', 'paper', 'scissors'].sample)
  end

  def valid_move
    move = nil
    loop do
      puts "Please choose rock, paper, or scissors (r, p, s):"
      move = gets.downcase.chomp
      break if %w(rock paper scissors r p s).include?(move)
      puts "Sorry, invalid choice."
    end
    convert_abbreviated_move(move)
  end

  def convert_abbreviated_move(move)
    move = 'rock' if move == 'r'
    move = 'paper' if move == 'p'
    move = 'scissors' if move == 's'
    move
  end

  def human?
    @player_type == :human
  end
end

# Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Player.new
    @computer = Player.new(:computer)
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, #{human.name}!"
    puts "You will be playing against #{computer.name}."
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors! Goodbye, #{human.name}!"
  end

  def display_winner
    display_moves
    puts winner_result
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def winner_result
    winner = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }
    if winner[human.move] == computer.move
      "#{human.name} has won!"
    elsif winner[computer.move] == human.move
      "#{computer.name} has won!"
    else
      "It is a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.downcase.chomp
      break if ['y', 'n'].include?(answer)
      puts "Sorry, please answer 'y' or 'n'."
    end
    answer == 'y'
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play

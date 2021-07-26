# Walk-through: OO RPS Design Choice 1
class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    n = nil
    loop do
      puts "Please choose your player name."
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    move = nil
    loop do
      puts "Please choose rock, paper, or scissors (r, p, s):"
      move = gets.downcase.chomp
      break if %w(rock paper scissors r p s).include?(move)
      puts "Sorry, invalid choice."
    end
    self.move = convert_abbreviated_move(move)
  end

  def convert_abbreviated_move(move)
    move = 'rock' if move == 'r'
    move = 'paper' if move == 'p'
    move = 'scissors' if move == 's'
    move
  end
end

class Computer < Player
  def set_name
    self.name = ['C-3PO', 'R2-D2', 'Optimus Prime', 'Megatron', 'HAL'].sample
  end

  def choose
    self.move = ['rock', 'paper', 'scissors'].sample
  end
end

# Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
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
    winner = choose_winner
    puts winner ? "#{winner.name} has won!" : "It is a tie!"
  end

  def choose_winner
    winner = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }
    if winner[human.move] == computer.move
      human
    elsif winner[computer.move] == human.move
      computer
    end
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
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

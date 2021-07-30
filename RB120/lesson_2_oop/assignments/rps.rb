class Score
  attr_reader :value

  def initialize
    @value = 0
  end

  def increment_by_1
    @value += 1
  end

  def to_s
    @value.to_s
  end
end

class Move
  attr_reader :type

  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def >(other_move)
    @beats.include?(other_move.type)
  end

  def to_s
    @type
  end
end

class Rock < Move
  def initialize
    @type = 'rock'
    @beats = ['scissors', 'lizard']
  end
end

class Paper < Move
  def initialize
    @type = 'paper'
    @beats = ['rock', 'spock']
  end
end

class Scissors < Move
  def initialize
    @type = 'scissors'
    @beats = ['paper', 'lizard']
  end
end

class Lizard < Move
  def initialize
    @type = 'lizard'
    @beats = ['paper', 'spock']
  end
end

class Spock < Move
  def initialize
    @type = 'spock'
    @beats = ['rock', 'scissors']
  end
end

class Player
  attr_reader :name, :move, :score

  def initialize
    set_name
    @score = Score.new
  end

  def update_score
    score.increment_by_1
  end

  private

  def pick_type(type)
    case type
    when 'rock' then Rock.new
    when 'paper' then Paper.new
    when 'scissors' then Scissors.new
    when 'lizard' then Lizard.new
    when 'spock' then Spock.new
    end
  end
end

class Human < Player
  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock " \
        "(r, p, s, l, k):"
      choice = gets.downcase.chomp.strip
      choice = convert_abbreviated_move(choice)
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    @move = pick_type(choice)
  end

  private

  def set_name
    n = nil
    loop do
      puts "Please choose your player name."
      n = gets.chomp.strip
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    @name = n
  end

  def convert_abbreviated_move(mv)
    case mv
    when 'r' then 'rock'
    when 'p' then 'paper'
    when 's' then 'scissors'
    when 'l' then 'lizard'
    when 'k' then 'spock'
    else mv
    end
  end
end

class Computer < Player
  attr_reader :robot, :move_set

  def choose
    move_type = robot.move_set.sample
    @move = pick_type(move_type)
  end

  private

  def set_name
    set_robot
    @name = robot.name
  end

  def set_robot
    robots = [C3PO.new, R2D2.new, OptimusPrime.new, Megatron.new, HAL.new]
    @robot = robots.sample
  end
end

class C3PO < Computer
  def initialize
    @name = 'C-3PO'
    @move_set = ['paper']
  end
end

class R2D2 < Computer
  def initialize
    @name = 'R2-D2'
    @move_set = ['rock']
  end
end

class OptimusPrime < Computer
  def initialize
    @name = 'Optimus Prime'
    @move_set = ['rock', 'paper', 'scissors']
  end
end

class Megatron < Computer
  def initialize
    @name = 'Megatron'
    @move_set = ['spock', 'lizard', 'lizard', 'lizard']
  end
end

class HAL < Computer
  def initialize
    @name = 'HAL'
    @move_set = ['scissors', 'scissors', 'scissors', 'scissors', 'rock']
  end
end

# Game Orchestration Engine
class RPSGame
  private

  WINNING_SCORE = 10

  attr_reader :human, :computer, :history

  def initialize
    @human = Human.new
    @computer = Computer.new
    @history = { human.name => [], computer.name => [] }
  end

  def display_welcome_message
    system("clear")
    puts "Welcome, #{human.name}, to Rock, Paper, Scissors, Lizard, Spock!"
    puts "\nYou will be playing against #{computer.name}.\n"
  end

  def rules_prompt
    response = nil
    loop do
      puts "\nWould you like to hear the rules? (y/n)"
      response = gets.chomp.downcase.strip
      break if %w(yes y no n).include?(response)
      puts "Please choose y or n."
    end
    display_rules if %w(yes y).include?(response)
  end

  # rubocop: disable Metrics/MethodLength
  def display_rules
    system("clear")
    puts <<~MSG
    You will face off with a random computer.
    The first to win #{WINNING_SCORE} rounds is the winner.
    During a round each will select a move of:
    rock(r), paper(p), scissors(s), lizard(l), spock(k)

    The following is a list of which move beats the other. It's very simple:

      Scissors cuts paper,
      paper covers rock,
      rock crushes lizard,
      lizard poisons spock,
      spock smashes scissors,
      scissors decapitates lizard,
      lizard eats paper,
      paper disproves spock,
      spock vaporizes rock,
      and as it always has...
      rock crushes scissors.

    Please press <Enter> to continue.
    MSG
    gets
    system("clear")
  end
  # rubocop: enable Metrics/MethodLength

  def update_history
    history[human.name] << human.move.type
    history[computer.name] << computer.move.type
  end

  def display_history
    puts
    puts "Move History:\n#{human.name}: (#{history[human.name].join(', ')})\n" \
      "#{computer.name}: (#{history[computer.name].join(', ')})"
  end

  def display_winner
    puts
    result = find_winner
    if result
      result.update_score
      puts "#{result.name} has won!"
    else
      puts "It's a tie!"
    end
    puts
  end

  def find_winner
    if human.move > computer.move
      human
    elsif computer.move > human.move
      computer
    end
  end

  def display_moves
    system("clear")
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_score
    puts "Score: #{human.name}: #{human.score} " \
    "#{computer.name}: #{computer.score}"

    win_prompt = "is the first to #{WINNING_SCORE} wins and is the champion!"
    puts "\n*** #{winner.name} #{win_prompt} ***" if winner
  end

  def quit?
    answer = nil
    loop do
      puts "\nPress <Enter> to play again! (q to quit)"
      answer = gets.downcase.chomp
      break unless ['q', 'quit', 'n', 'no'].include?(answer)
      return true
    end
    system("clear")
    false
  end

  def winner
    if human.score.value == WINNING_SCORE
      human
    elsif computer.score.value == WINNING_SCORE
      computer
    end
  end

  def game_loop
    loop do
      human.choose
      computer.choose
      update_history
      display_moves
      display_winner
      display_score
      display_history
      break if winner || quit?
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "\nWould you like to play another game? (y/n)"
      answer = gets.chomp.downcase.strip
      break if %w(y yes n no).include?(answer)
      puts "Please type 'y' or 'n'."
    end
    system("clear")
    %w(y yes).include?(answer)
  end

  def reset_game
    @human = Human.new
    @computer = Computer.new
    @history = { human.name => [], computer.name => [] }
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock! Goodbye," \
      " #{human.name}!"
  end

  public

  def play
    loop do
      display_welcome_message
      rules_prompt
      game_loop
      break unless play_again?
      reset_game
    end
    display_goodbye_message
  end
end

RPSGame.new.play

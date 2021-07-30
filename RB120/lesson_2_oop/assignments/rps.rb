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
  attr_reader :value, :type

  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(value)
    @value = pick_type(value)
    @type = @value.type
  end

  def pick_type(value)
    case value
    when 'rock' then Rock.new
    when 'paper' then Paper.new
    when 'scissors' then Scissors.new
    when 'lizard' then Lizard.new
    when 'spock' then Spock.new
    end
  end

  def self.values(name)
    case name
    when 'C-3PO' then ['paper']
    when 'R2-D2' then ['rock']
    when 'Optimus Prime' then ['rock', 'paper', 'scissors']
    when 'Megatron' then ['spock', 'lizard', 'lizard', 'lizard']
    when 'HAL' then ['scissors', 'scissors', 'scissors', 'scissors', 'rock']
    else VALUES
    end
  end

  def rock?
    type == 'rock'
  end

  def paper?
    type == 'paper'
  end

  def scissors?
    type == 'scissors'
  end

  def lizard?
    type == 'lizard'
  end

  def spock?
    type == 'spock'
  end

  def to_s
    @value.type
  end
end

class Rock < Move
  def initialize
    @type = 'rock'
  end

  def >(other_move)
    other_move.scissors? || other_move.lizard?
  end

  def <(other_move)
    other_move.paper? || other_move.spock?
  end
end

class Paper < Move
  def initialize
    @type = 'paper'
  end

  def >(other_move)
    other_move.rock? || other_move.spock?
  end

  def <(other_move)
    other_move.scissors? || other_move.lizard?
  end
end

class Scissors < Move
  def initialize
    @type = 'scissors'
  end

  def >(other_move)
    other_move.paper? || other_move.lizard?
  end

  def <(other_move)
    other_move.rock? || other_move.spock?
  end
end

class Lizard < Move
  def initialize
    @type = 'lizard'
  end

  def >(other_move)
    other_move.paper? || other_move.spock?
  end

  def <(other_move)
    other_move.rock? || other_move.scissors?
  end
end

class Spock < Move
  def initialize
    @type = 'spock'
  end

  def >(other_move)
    other_move.rock? || other_move.scissors?
  end

  def <(other_move)
    other_move.paper? || other_move.lizard?
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    self.score = Score.new
  end

  def update_score
    score.increment_by_1
  end
end

class Human < Player
  def set_name
    n = nil
    loop do
      puts "Please choose your player name."
      n = gets.chomp.strip
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

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
    self.move = Move.new(choice)
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
  def set_name
    self.name = ['C-3PO', 'R2-D2', 'Optimus Prime', 'Megatron', 'HAL'].sample
  end

  def choose
    self.move = Move.new(Move.values(name).sample)
  end
end

# Game Orchestration Engine
class RPSGame
  WINNING_SCORE = 10

  attr_accessor :human, :computer, :history

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

  def display_goodbye_message
    puts "\nThanks for playing Rock, Paper, Scissors, Lizard, Spock! Goodbye," \
      " #{human.name}!"
  end

  def update_history
    history[human.name] << human.move.type
    history[computer.name] << computer.move.type
  end

  def display_history
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
    if human.move.value > computer.move.value
      human
    elsif human.move.value < computer.move.value
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
    puts "\n#{winner.name} #{win_prompt}" if winner
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

  def play
    display_welcome_message
    rules_prompt
    game_loop
    display_goodbye_message
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
end

RPSGame.new.play

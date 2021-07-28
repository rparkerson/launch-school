class Score
  attr_reader :value

  def initialize
    @value = 0
  end

  def >(other)
    value > other.value
  end

  def <(other)
    value < other.value
  end

  def increment_by_1
    @value += 1
  end

  def to_s
    @value.to_s
  end
end

class History
  attr_accessor :data

  def initialize(human, computer)
    @data = { human => [], computer => [] }
  end

  def to_s
    human, computer = data.keys
    "History: #{human}: (#{data[human].join(', ')})\n" \
    "         #{computer}: (#{data[computer].join(', ')})"
  end
end

class Move
  attr_reader :value, :type

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
    else ['rock', 'paper', 'scissors', 'lizard', 'spock']
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
      n = gets.chomp
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
      choice = gets.downcase.chomp
      choice = convert_abbreviated_move(choice)
      break if Move.values('standard').include?(choice)
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
  attr_accessor :human, :computer, :history

  def initialize
    @human = Human.new
    @computer = Computer.new
    @history = History.new(human.name, computer.name)
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock, #{human.name}!"
    puts "You will be playing against #{computer.name}."
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock! Goodbye," \
      " #{human.name}!"
  end

  def update_history
    history.data[human.name] << human.move.type
    history.data[computer.name] << computer.move.type
  end

  def display_history
    puts history
  end

  def display_winner
    result = find_winner
    if result
      result.update_score
      puts "#{result.name} has won!"
    else
      puts "It's a tie!"
    end
  end

  def find_winner
    if human.move.value > computer.move.value
      human
    elsif human.move.value < computer.move.value
      computer
    end
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_score
    puts "Score: #{human.name}: #{human.score} " \
    "#{computer.name}: #{computer.score}"
    puts "#{winner.name} is the first to 10 wins and is the champion!" if winner
  end

  def quit?
    answer = nil
    loop do
      puts "Press <Enter> to play again! (q to quit)"
      answer = gets.downcase.chomp
      break unless ['q', 'quit', 'n', 'no'].include?(answer)
      return true
    end
    system("clear")
    false
  end

  def winner
    if human.score.value == 10
      human
    elsif computer.score.value == 10
      computer
    end
  end

  def play
    display_welcome_message
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

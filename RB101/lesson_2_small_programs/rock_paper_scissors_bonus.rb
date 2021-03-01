VALID_CHOICES = %w(rock paper scissors lizard spock)

ABBREVIATED_CHOICE = { 'r' => 'rock',
                       'p' => 'paper',
                       's' => 'scissors',
                       'l' => 'lizard',
                       'k' => 'spock' }

WINNING_CHOICES = { 'rock' => ['scissors', 'lizard'],
                    'paper' => ['rock', 'spock'],
                    'scissors' => ['paper', 'lizard'],
                    'lizard' => ['paper', 'spock'],
                    'spock' => ['rock', 'scissors'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def hello
  prompt("Welcome to rock, paper, scissors, lizard, spock!")
  prompt("First to reach five wins is the match winner!")
end

def get_choice
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} (r, p, s, l, k)")
    choice = Kernel.gets().chomp().downcase()
    choice = choice_converter(choice)

    if VALID_CHOICES.include?(choice)
      break choice
    else
      prompt("That's not a valid choice.")
    end
  end
end

def choice_converter(player_choice)
  if ABBREVIATED_CHOICE.include?(player_choice)
    player_choice = ABBREVIATED_CHOICE[player_choice]
  end
  player_choice
end

def win?(first, second)
  WINNING_CHOICES[first].include?(second)
end

def display_choices(choice, computer_choice)
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def tally_score(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  end
  score
end

def display_score(score)
  prompt("Current Score: Player: #{score[:player]} " \
  "Computer: #{score[:computer]}")
end

def check_match_winner(score)
  if score[:player] == 5
    'player'
  elsif score[:computer] == 5
    'computer'
  else
    false
  end
end

def quit?
  prompt("Press enter when you're prepared for the next round! (q to quit)")
  answer = Kernel.gets().chomp().downcase()
  answer == 'q' || answer == 'quit' ? true : false
end

def display_match_winner(result)
  if result == 'player'
    prompt("Congratulations! You reached five wins first and are the " \
    "grand champion!")
  elsif result == 'computer'
    prompt("The computer reached five wins first and is the grand champion!")
  end
end

def goodbye
  prompt("Thank you for playing. Goodbye!")
end

hello()

result = nil
score = { player: 0, computer: 0 }
loop do
  choice = get_choice()
  computer_choice = VALID_CHOICES.sample

  display_choices(choice, computer_choice)
  display_results(choice, computer_choice)

  score = tally_score(choice, computer_choice, score)
  display_score(score)

  result = check_match_winner(score)

  break if result
  break if quit?()

  system('clear')
end

display_match_winner(result)
goodbye()

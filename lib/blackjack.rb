def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  # code #get_user_input here
  #answer = gets.chomp
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 = deal_card
  card_total = card_1 + card_2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  
  answer = get_user_input
  
  if answer == 'h'
  #if get_user_input == 'h'
    card_total += deal_card
    display_card_total(card_total)
  #elsif get_user_input != 'h' && get_user_input != 's'  
  elsif answer != 'h' && answer != 's'
    invalid_command
    prompt_user
  elsif answer == 's'
  #elsif get_user_input == 's'
    prompt_user
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

########################################### ##########
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round

  #until (card_total > 21 || get_user_input == 's')
  until (card_total > 21)
    #card_total = hit?(card_total)
    hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
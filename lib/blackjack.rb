def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(10) + 1
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to " + total.to_s
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit " + total.to_s + ". Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card() + deal_card()
  display_card_total(sum)
  return deal_card() + deal_card()
end

def hit?(total)
  # code hit? here
  prompt_user()
  input = get_user_input()
  if input == "h"
    return total + deal_card()
  elsif input == "s"
    return total
  else
    invalid_command()
    hit?(total)
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  sum = initial_round()
  while sum < 21 do
    sum = hit?(sum)
  end
end_game(sum)
end
    

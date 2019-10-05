def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)

  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  s=0
  2.times do
    s=deal_card
  end

  #deal_card
  display_card_total(s)
end

def hit?(card_total)
  prompt_user
  response=get_user_input

  if response=='h' then
    card_total+=deal_card
  elsif response=='s' then
    return card_total
  elsif response!='h' || response!='s' then
        invalid_command
        prompt_user
    

end

def invalid_command
  puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

end

require'pry'
def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(1..11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    display_card_total(sum = deal_card + deal_card)
    sum
end

def hit?(num)
    prompt_user
    char = get_user_input
    if char == 's'
        num
    elsif char == 'h'
        num += deal_card
    end
end

def invalid_command
    puts "Please enter a valid command"
    prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    sum = initial_round
    num = hit?(sum)
    display_card_total(num)
    if num > 21
        end_game(num)
    else
        hit?(num)
    end
end

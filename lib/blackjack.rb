def welcome
        welcome_phrase = "Welcome to the Blackjack Table"
        puts welcome_phrase
end

def deal_card
    card = rand(1..11)
    return card
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
    return card_total
end

def prompt_user
     puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    card_total = 0
    #card = 0
    #card = deal_card
    card_total = deal_card + deal_card
    display_card_total(card_total)
    return card_total
end

def hit?(card_total)
    prompt_user
    user_ip = get_user_input
    case user_ip
        when "h"
            card = deal_card
            new_card_total = card + card_total
            card_total = new_card_total
            return card_total
        when "s"
            return card_total
        else
            invalid_command
            go to 37
            #prompt_user
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
card_total = initial_round
until card_total > 21
next_round = display_card_total(hit?(card_total))
card_total = next_round
end
end_game(card_total)
end

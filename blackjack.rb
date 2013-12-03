# Tealeaf Academy - Coursework
# Blackjack Game
# Version: 1.0.0
require "pry"

#######################Initialize Methods###################
# Hash of cards & values - returns hash
# Note that ace is 11 by default. Ace will only reduce to value of 1, if needed in game.
def deck_of_cards
  deck_hash = {h2: 2, h3: 3, h4: 4, h5: 5, h6: 6, h7: 7, h8: 8, h9: 9, h10: 10, hj: 10, hq: 10, hk: 10, ha: 11,
               d2: 2, d3: 3, d4: 4, d5: 5, d6: 6, d7: 7, d8: 8, d9: 9, d10: 10, dj: 10, dq: 10, dk: 10, da: 11,
               s2: 2, s3: 3, s4: 4, s5: 5, s6: 6, s7: 7, s8: 8, s9: 9, s10: 10, sj: 10, sq: 10, sk: 10, sa: 11,
               c2: 2, c3: 3, c4: 4, c5: 5, c6: 6, c7: 7, c8: 8, c9: 9, c10: 10, cj: 10, cq: 10, ck: 10, ca: 11}
end

# Returns value of received card.
# Takes a symbol & a hash, returns an interger.
def card_value(card_symbol, deck_hash)
  deck_hash[card_symbol]
end

# Makes random array of a single deck.
# Takes hash, returns randomized array.
def build_deck(deck_hash)
  deck_array = Array.new
  deck_hash.each {|k, _| deck_array.push(k)}
  deck_array.shuffle
end


#######################Game Methods######################
# Checks if want to play the game
def play_game?(game_count)
  loop do
    if game_count == 0
      puts "Would you like to play? (yes/no)"
    else
      puts "Would you like to play again? (yes/no)"
    end

    answer = gets.chomp
    case answer.downcase
    when "yes" || "y"
      return true
    when "no" || "n"
      return false
    when "y"
      return true
    when "n"
      return false
    else
      next      # Is this necessary? Seems redundant.
    end
  end
end

# Displays the updated hand information & returns the new total hand value
# Receives the old hand value, new hand array, and deck_hash. Returns new total hand value.
def deal_and_total(name, hand_array, deck_hash)
  read_hand(name, hand_array, deck_hash)
  new_hand_value = sum_cards(hand_array, deck_hash)
end


# Displays card received & its value. If more than 1 card, displays whole hand & total value of hand.
# Takes old hand value, new hand array, and the deck hash. No return.
def read_hand(name, hand_array, deck_hash)
  hand_val = sum_cards(hand_array, deck_hash)
  puts "#{name}'s hand is now #{hand_array.join(", ")} for a total of #{hand_val} points"
  nil
end

# Sums a card to the hand value.
# Receives the existing hand value, then adds a single card to it.
# Takes an interger hand value (optional), a card symbol, and a deck of cards hash. Returns an interger of the new hand value.
def sum_cards(hand_array, deck_hash)
  hand_value = 0
  hand_array.each do |card_sym|
    hand_value += deck_hash[card_sym]
  end
  hand_value
end

# Checks for a Break condition(over 21)
def check_break?(hand_value)
  hand_value > 21 ? true : false
end

# Checks hand for an ace, and returns "true" if finds one.
# Takes a hand array & deck hash, returns true if ace, false if no ace.
def check_ace?(hand_array, deck_hash)
  hand_array.each { |card|
    return true  if deck_hash[card] == 11
    }
  false
end

# Check to see if the ace is already adjusted
def unadjusted_ace?(player_hand_array, deck_hash)
  if (player_hand_array.include?(:ha) && (deck_hash[:ha]==11))
    return true
  elsif (player_hand_array.include?(:da) && (deck_hash[:da]==11))
    return true
  elsif (player_hand_array.include?(:sa) && (deck_hash[:sa]==11))
    return true
  elsif (player_hand_array.include?(:ca) && (deck_hash[:ca]==11))
    return true
  else
    false
  end
end

# Adjusts one ace at a time to prevent a blackjack "break"
# TODO: Update this section with names. Simple but not critical.
def adjust_ace(player_hand_array, deck_hash)
  if (player_hand_array.include?(:ha) && (deck_hash[:ha]==11))
    deck_hash[:ha] = 1
    puts "Your :ha ace is now a 1 to prevent a break."
    return deck_hash
  elsif (player_hand_array.include?(:da) && (deck_hash[:da]==11))
    deck_hash[:da] = 1
    puts "Your :da ace is now a 1 to prevent a break."
    return deck_hash
  elsif (player_hand_array.include?(:sa) && (deck_hash[:sa]==11))
    deck_hash[:sa] = 1
    puts "Your :sa ace is now a 1 to prevent a break."
    return deck_hash
  elsif (player_hand_array.include?(:ca) && (deck_hash[:ca]==11))
    deck_hash[:ca] = 1
    puts "Your :ca ace is now a 1 to prevent a break."
    return deck_hash
  else
    false
  end
end



# Checks who wins
# Takes two point scores, compares, returns 0 for tie, 1 for dealer win, 2 for player win
def check_win(dealer_hand_value, player_hand_value)
  case
  when check_break?(dealer_hand_value)
    puts "The dealer broke - you win!"
  when check_break?(player_hand_value)
    puts "You broke - the dealer wins"
  when dealer_hand_value == player_hand_value
    puts "Push! You both get your bets back."
  when dealer_hand_value > player_hand_value
    puts "The dealer wins."
  when dealer_hand_value < player_hand_value
    puts "You win!"
  else
    puts "I'm not sure what just happened - this code needs a doctor!"
  end
end

#######################Game Play###########################
#TODO: Maybe make the dealing a def that takes different arrays to keep things DRY-er.
#TODO: Maybe make the player & dealer a hash for value, cards, etc...? Not sure if this would be more/less readable...
#TODO: Allow bets. Track winnings/losses. Kick player off the table when go broke.
#TODO: Allow saving of high-score.


#######################Intro to Playing###########################
game_count = 0
dealer_name = "Ms Dealer"
puts "----------------------------------------------------------"
puts "Welcome to the blackjack table! I'm #{dealer_name}. What's your name?"
player_name = gets.chomp
puts "It's a pleasure to meet you, #{player_name}."
puts "Why don't you sit down & enjoy a game or more of blackjack."
puts "Today we have a special going where you get $400 free to play at the tables."


#######################Initial Deal###########################
while play_game?(game_count)
puts ""
puts ""
puts "Here, let me deal you up & we can get started..."

  # Grab new shuffled deck of cards
  deck_hash = deck_of_cards
  play_deck_array = build_deck(deck_hash)

  # Initial player deal - 2 cards to player
  player_hand_value = 0
  player_hand_array = Array.new
  # Deal 2 cards & display total hand value
  player_hand_array.push(play_deck_array.pop)
  player_hand_array.push(play_deck_array.pop)
  player_hand_value = deal_and_total(player_name, player_hand_array, deck_hash)


  # Initial dealer deal - 2 cards to dealer (first is visible, second is hidden)
  dealer_hand_value = 0
  dealer_hand_array = Array.new
  # Card 1 - visible
  dealer_hand_array.push(play_deck_array.pop)
  dealer_hand_value = deal_and_total(dealer_name, dealer_hand_array, deck_hash)
  # Card 2 - hidden
  dealer_hand_array.push(play_deck_array.pop)
  puts "#{dealer_name} draws another card & places it face-down."
  puts ""

  #######################User's Turn###########################
  loop do
    # Check if at 21. If so, give hint.
    puts "Everyone at the table says: \"You're at 21! Definitely stay!\"" if player_hand_value == 21

    # Solicit player's game-play choice(s), unless break 21 & lose.
    puts "What would you like to do? (stay/hit)"
    answer = gets.chomp


    case answer.downcase
    when "stay"
     puts "Ok, stay it is."
     break
    when "hit"
      player_hand_array.push(play_deck_array.pop)
      puts "You received a #{player_hand_array.last}"
      player_hand_value = deal_and_total(player_name, player_hand_array, deck_hash)

      # If broke but have ace, adjust the ace
      if (check_break?(player_hand_value) && unadjusted_ace?(player_hand_array, deck_hash))
        deck_hash = adjust_ace(player_hand_array, deck_hash)
        player_hand_value = deal_and_total(player_name, player_hand_array, deck_hash)
        next
      elsif check_break?(player_hand_value)
        break
      end
    end
  end

  #######################Dealer's Turn###########################
  # Display dealer's last card
  dealer_hand_value = deal_and_total(dealer_name, dealer_hand_array, deck_hash) unless check_break?(player_hand_value)

  # Dealer's decision process
  loop do
    if check_break?(player_hand_value)
      break
    elsif (dealer_hand_value < 17)  || (dealer_hand_value < player_hand_value)
      dealer_hand_array.push(play_deck_array.pop)
      dealer_hand_value = deal_and_total(dealer_name, dealer_hand_array, deck_hash)

      # If broke but have ace, adjust the ace.
      if (check_break?(dealer_hand_value) && unadjusted_ace?(dealer_hand_array, deck_hash))
        deck_hash = adjust_ace(dealer_hand_array, deck_hash)
        dealer_hand_value = deal_and_total(dealer_name, dealer_hand_array, deck_hash)
        next
      elsif check_break?(dealer_hand_value)
        break
      end

    elsif dealer_hand_value == player_hand_value
      break
    else
      break
    end
  end

  #######################Game Outcome###########################
  check_win(dealer_hand_value, player_hand_value)


  game_count +=1
end


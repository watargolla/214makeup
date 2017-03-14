require 'pry'
picks = []


def quickpick
  rand (1..100)
end

def high(guess, random)
  guess > random
end

def low(guess, random)
  guess < random
end

def winner(guess, random)
  guess == random
end

def repeat(picks, guess)
  picks.include?(guess)
end

random_number = quickpick
puts random_number
count = 0



loop do
  until count == 5
    puts "Guess any number between 1 and 100"
    user_guess = gets.chomp.to_i
    if repeat(picks, user_guess)
      puts "You chose that number before."
      count += 1
      picks << user_guess
    elsif high(user_guess, random_number)
      puts "You're too high."
      count += 1
      picks << user_guess
    elsif low(user_guess, random_number)
      puts "You're too low."
      count += 1
      picks << user_guess
    else winner(user_guess, random_number)
      puts "Ching ching! Winner Winner Chicken Dinner!"
      break
    end
  end
  puts "Game over. Thank you for playing."
  break
end

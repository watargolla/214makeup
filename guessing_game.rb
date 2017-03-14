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

picks = []
random_number = quickpick
puts random_number
count = 0



loop do
  until count == 5
    puts "Guess any number between 1 and 100"
    user_guess = gets.chomp.to_i
    if low(user_guess, random_number)
      puts "You're too low. Guess again."
      count += 1
      picks << user_guess
    elsif high(user_guess, random_number)
      puts "You're too high. Guess again."
      count += 1
      picks << user_guess
    else winner(user_guess, random_number)
      puts "Ching ching."
      break
    end
  end
  puts "Thank you for playing."
  break
end

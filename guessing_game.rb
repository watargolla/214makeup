quickpick = rand (1..100)
puts quickpick
count = 0
puts "Guess any number between 1 and 100"

def high

end

def low

end

def winner

end

loop do
  until count == 5
    user_guess = gets.chomp.to_i
    if user_guess < quickpick
      puts "You're too low. Guess again."
      count += 1
    elsif user_guess > quickpick
      puts "You're too high. Guess again."
      count += 1
    else user_guess = quickpick
      puts "Ching ching."
      break
    end
  end
  puts "Thank you for playing."
  break
end

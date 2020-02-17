secret_word = "giraffe"
guess = ""
guess_count = 1
guess_limit = 3

while guess != secret_word && guess_count <= guess_limit
  puts "Enter guess:"
  guess = gets.chomp
  guess_count += 1
end
if guess != secret_word && guess_count >= guess_limit
  puts "You lose!"
else
  puts "You win!"
  end

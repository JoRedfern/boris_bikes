floors = []
user_input = ""
while user_input != "stop"
  puts "how many floors?"
  user_input = gets.chomp
  if user_input != "stop"
    floors.push(user_input.to_i)
  end
end
floors.each.sum

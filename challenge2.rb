# Question 2
puts "Would you like to add, subtract, multiply, or divide?"
math_option = gets.chomp
if math_option == "add"
  puts "What is number 1"
  first = gets.chomp
  puts "What is number 2"
  second = gets.chomp
  total = (first.to_i) + (second.to_i)
  puts "Your result is #{total}"
elsif math_option == "subtract"
  puts "What is number 1"
  first = gets.chomp
  puts "What is number 2"
  second = gets.chomp
  total = (first.to_i) - (second.to_i)
  puts "Your result is #{total}"
elsif math_option == "multiply"
  puts "What is number 1"
  first = gets.chomp
  puts "What is number 2"
  second = gets.chomp
  total = (first.to_i) * (second.to_i)
  puts "Your result is #{total}"
elsif math_option == "divide"
  puts "What is number 1"
  first = gets.chomp
  puts "What is number 2"
  second = gets.chomp
  total = (first.to_i) / (second.to_i)
  puts "Your result is #{total}"
else 
  puts "Sorry, that was not an option"
end


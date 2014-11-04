# Question 1
puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
input = gets.chomp
if input == "1"
  puts "Enter Celsius Temperature"
  far = gets.chomp
  faren = (far.to_i * 1.8) + 32
  puts "It is #{faren.to_i}° Fahrenheit"
elsif input == "2"
  puts "Enter Fahrenheit Temperature"
  cel = gets.chomp
  celci = (cel.to_i * 0.55) - 32
  puts "It is #{celci.to_i}° Celcius"
elsif input != "1" || "2"
  puts "Sorry, please type '1' or '2'"
end
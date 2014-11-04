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


# Question 3
puts "write a sentence"
  sentence = gets.chomp
  words = sentence.split(" ")

  result = Hash.new(0)
  words.each {|i| result[i] += 1}
  puts result


# Question 4
def last(end_response)
  if end_response == "no"
    bank()
  elsif end_response == "yes"
    puts "Thank You!"
  else
    puts "sorry, not sure what you meant"
  end
end

def bank
  puts "Hello, would you like to 'display' your balance, 'withdraw', or 'deposit'?"
  response = gets.chomp
  if response == "display"
    puts "Your current balance is #{$money}"
    puts "Are you done, 'yes' or 'no'?"
    end_response = gets.chomp
    last(end_response)
  elsif response == "withdraw"
    puts "How much would you like to withdraw?"
    subtract = gets.chomp
    $money = $money.to_i - subtract.to_i
    puts "Your current balance is #{$money.to_i}"
    puts "Are you done, 'yes' or 'no'?"
    end_response = gets.chomp
    last(end_response)
  elsif response == "deposit"
    puts "How much would you like to deposit?"
    addition = gets.chomp
    $money = $money.to_i + addition.to_i
    puts "Your current balance is #{$money.to_i}"
    puts "Are you done, 'yes' or 'no'?"
    end_response = gets.chomp
    last(end_response)
  end
end

$money = 10000
bank


# Question 5
$tries = 0
$gauntlet = rand(1..100)

def guess(num)
  if num.to_i > $gauntlet
    puts "The number is lower than #{num}"
    $tries += 1
    guessing2
  elsif num.to_i < $gauntlet
    puts "The number is more than #{num}"
    $tries += 1
    guessing2
  elsif num.to_i == $gauntlet
    puts "you got it! It took you #{$tries} tries"
  end
end

def guessing
puts "Guess a number between 1 and 100"
  num = gets.chomp
  guess(num)
end

def guessing2
puts "Please guess again"
  num = gets.chomp
  guess(num)
end

guessing

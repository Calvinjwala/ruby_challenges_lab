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
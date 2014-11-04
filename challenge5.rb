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

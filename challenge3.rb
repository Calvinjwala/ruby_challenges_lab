# Question 3
puts "write a sentence"
  sentence = gets.chomp
  words = sentence.split(" ")

  result = Hash.new(0)
  words.each {|i| result[i] += 1}
  puts result
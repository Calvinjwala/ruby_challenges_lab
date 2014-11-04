$result = Array.new

def user(response)
  if response == "yes"
   name
  elsif response == "no"
    puts "Here is a summary of your student array:"
    $result.each_with_index do |values, index|
    p "The student at #{index} is #{values}"
    end
  end
end


def name 
  puts "What is the student's name?"
    students = gets.chomp
    $result.push(students)
    p $result
  puts "Would you like to add another student?"
    response = gets.chomp
    user(response)
end

name 
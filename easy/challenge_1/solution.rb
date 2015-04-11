puts 'Please enter your name: '
name = gets.chomp
puts 'Please enter your age: '
age = gets.chomp
puts 'Please enter your reddit username: '
username = gets.chomp

puts message = "Your name is #{name}, you are #{age} years old, and your reddit username is #{username}."

File.write('output.txt', message)
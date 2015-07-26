# reddit daily programmer - easy 4
# random password generator
# http://www.reddit.com/r/dailyprogrammer/comments/pm6oj/2122012_challenge_4_easy/

chars = [(0..9), ('a'..'z'), ('A'..'Z')].map { |x| x.to_a }.concat(['!', '@', '#', '$', '%', '^', '&', '*', '?', '|']).flatten

print 'How many passwords would you like to generate? '
pw_quantity = gets.to_i
print 'How long should the passwords be? '
pw_length = gets.to_i

pw_quantity.times do
  puts (0...pw_length).map { chars.sample }.join
end
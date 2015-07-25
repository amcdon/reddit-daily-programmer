# reddit daily programmer - easy 4
# random password generator
# http://www.reddit.com/r/dailyprogrammer/comments/pm6oj/2122012_challenge_4_easy/

require 'securerandom'

print 'How many passwords would you like to generate? '
pw_quantity = gets.chomp
print 'How long should the passwords be? '
pw_length = gets.chomp


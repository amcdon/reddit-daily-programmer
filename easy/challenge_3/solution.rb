# reddit daily programmer - easy 3
# implement a caesar cipher encryptor and decryptor

def print_menu
  print <<MENU
  \nPlease choose one of the following options:
  1. Encrypt
  2. Decrypt
  3. Exit
MENU
end

def encrypt_message(message, shift)
  alpha = ('a'..'z').to_a
  alpha_cap = ('A'..'Z').to_a
  encrypted = ''

  message.each_char do |char|
    if alpha.include?(char)
      encrypted += shift_encrypt(alpha, char, shift)
    elsif alpha_cap.include?(char)
      encrypted += shift_encrypt(alpha_cap, char, shift)
    else
      encrypted += char
    end
  end
  puts encrypted
end

def decrypt_message(message, shift)
  alpha = ('a'..'z').to_a
  alpha_cap = ('A'..'Z').to_a
  encrypted = ''

  message.each_char do |char|
    if alpha.include?(char)
      encrypted += shift_decrypt(alpha, char, shift)
    elsif alpha_cap.include?(char)
      encrypted += shift_decrypt(alpha_cap, char, shift)
    else
      encrypted += char
    end
  end
  puts encrypted
end

def shift_encrypt(alphabet, char, shift)
  if (alphabet.index(char) + shift) >= 26
    temp = alphabet[(alphabet.index(char) - 26) + shift]
  else
    temp = alphabet[alphabet.index(char) + shift]
  end
  temp
end

def shift_decrypt(alphabet, char, shift)
  if (alphabet.index(char) + shift) >= 26
    temp = alphabet[(alphabet.index(char) - 26) - shift]
  else
    temp = alphabet[alphabet.index(char) - shift]
  end
  temp
end

loop do
  print_menu
  selection = gets.to_i
  break if selection == 3

  if selection == 1
    print 'Please enter the message you would like to encrypt: '
    message = gets.chomp
    print 'Please enter the shift factor: '
    shift_factor = gets.to_i

    encrypt_message(message, shift_factor)
  end

  if selection == 2
    print ' Please enter the message you would like to decrypt: '
    message = gets.chomp
    print 'Please enter the shift factor: '
    shift_factor = gets.to_i

    decrypt_message(message, shift_factor)
  end
end

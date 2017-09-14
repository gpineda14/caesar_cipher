def caesar_cipher(message, key)
  # make two arrays to hold lowercase and uppercase letters
  lowercase = ('a'..'z').to_a.join
  uppercase = ('A'..'Z').to_a.join
  # create ciphers for lowercase and uppercase letters
  lowercase_cipher = lowercase.chars.rotate(key).join
  uppercase_cipher = uppercase.chars.rotate(key).join
  # run the message through uppercase and lowercase ciphers
  message = message.tr(lowercase, lowercase_cipher)
  message.tr(uppercase, uppercase_cipher)
end

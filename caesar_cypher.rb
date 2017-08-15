def caesar_cypher(message, key)
  message.split("").each { |letter|
    if letter =~ /[A-Za-z]/
      key.times {
        letter = letter.next!
      }
    end
  }.join("")
end

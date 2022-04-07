ALPHABET = ("A".."Z").to_a

def encrypt(text)
  text.chars.map do |letter|
    index = ALPHABET.index(letter)
    index ? ALPHABET[index - 3] : letter
  end.join
  # make a alphabet array
  # split text into letters
  # map over
  # find the index from the alphabet
  # suntract 3 from the index
  # get a letter from alphabet with a new index
  # upcase and join
end

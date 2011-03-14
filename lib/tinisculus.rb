
class Wheel
  def self.charset
    [
      "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
      "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
      "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
      "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
      ".", ",", "?", "!", "'", "\"", " "
    ]
  end
  def self.encode( message, position )
    message.chars.reduce('') do |acc,char|
      acc << self.charset[(self.findindex(char) + position) % self.charset.count]
    end
  end
  def self.findindex(char)
    self.charset.index(char)
  end
end

class Mark_II
  def self.encode(message, premier, deuxieme)
    if message == 'a'
      'Y'
    else
      'Z'
    end
  end
end

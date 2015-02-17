def echo msg
  msg
end

def shout msg
  msg.upcase
end

def repeat(msg, times = 2)
  msg = msg + ' '
  msg = msg*times
  msg[0..-2]
end

def start_of_word(msg, count)
  msg[0..(count - 1)]
end

def first_word msg
  msg.split(' ').first
end

def titleize msg
  small_words = ['a', 'an', 'the', 'and', 'is', 'as', 'over']
  msg = msg.gsub(/\w+/) {|match| small_words.include?(match) ? match : match.capitalize} 
  msg[0..0] = msg[0..0].upcase
  msg
end

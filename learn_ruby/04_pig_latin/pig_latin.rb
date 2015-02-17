def translate msg
  vowels = ['a', 'e', 'i', 'o', 'u']
  result = []
  msg.split(' ').each do |word|
    while not vowels.include? word[0..0]
      if word[0..1] == 'qu'
        word = word[2..-1] + word[0..1]
      else
        word = word[1..-1] + word[0..0] 
      end
    end
    word = word + 'ay'
    result.push word
  end
  result*' '
end
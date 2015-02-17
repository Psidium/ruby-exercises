class Book
  attr_reader :title
  def title=(value)
    small_words = ['a', 'an', 'the', 'and', 'is', 'as', 'over', 'in', 'of']
    value = value.gsub(/\w+/) {|match| small_words.include?(match) ? match : match.capitalize} 
    value[0..0] = value[0..0].upcase
    @title = value
  end
end
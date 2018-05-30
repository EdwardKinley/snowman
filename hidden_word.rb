class HiddenWord

  attr_reader(:word, :display)

  def initialize(word)
    @word = word
    @display = @word.downcase.tr("^ ", "*")
  end

  def letter_in_word?(letter)
    return @word.include?(letter)
  end

end

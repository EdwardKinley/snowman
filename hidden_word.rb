class HiddenWord

  attr_reader(:word, :display)

  def initialize(word)
    @word = word
    @display = @word.downcase.tr("^ ", "*")
  end

  def letter_in_word?(letter)
    return @word.include?(letter)
  end

  def reveal_letter(letter)
    return @display if @word.include?(letter) == false
    @word.split("").each_index{|index| @display[index] = @word[index] if @word[index] == letter}
    return @display
  end

end

class Game

  attr_reader(:player, :hidden_word, :guessed_letters)

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end

  def letter_in_word?(letter)
    return @hidden_word.word.include?(letter)
  end

  def guess_letter(letter)
    @guessed_letters.push(letter)
    @player.lives -= 1 if @hidden_word.letter_in_word?(letter) == false
    @hidden_word.reveal_letter(letter)
  end

end

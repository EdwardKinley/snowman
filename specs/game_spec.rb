require("minitest/autorun")
require_relative("../game.rb")
require_relative("../player.rb")
require_relative("../hidden_word.rb")

class GameTest < MiniTest::Test

  def setup
    @player1 = Player.new("Colby")
    @player2 = Player.new("Erin", 4)
    @hidden_word1 = HiddenWord.new("wheel of fortune")
    @hidden_word2 = HiddenWord.new("hello there")
    @game1 = Game.new(@player1, @hidden_word1)
    @game2 = Game.new(@player2, @hidden_word2)
  end

  def test_game_setup
    assert_equal(@player1, @game1.player)
    assert_equal("Erin", @player2.name)
    assert_equal(@hidden_word1, @game1.hidden_word)
    assert_equal([], @game1.guessed_letters)
  end

  def test_letter_in_word?
    assert_equal(true, @hidden_word1.letter_in_word?("e"))
    assert_equal(false, @hidden_word1.letter_in_word?("x"))
  end

  def test_guess_letter
    @game1.guess_letter("e")
    assert_equal(6, @player1.lives)
    assert_equal(["e"], @game1.guessed_letters)
    assert_equal("**ee* ** ******e", @hidden_word1.display)
    
    @game2.guess_letter("x")
    assert_equal(3, @player2.lives)
    assert_equal(["x"], @game2.guessed_letters)
    assert_equal("***** *****", @hidden_word2.display)
  end

end

require("minitest/autorun")
require_relative("../hidden_word.rb")

class HiddenWordTest < MiniTest::Test

  def setup
    @hidden_word1 = HiddenWord.new("wheel of fortune")
  end

  def test_hidden_word_setup
    assert_equal("wheel of fortune", @hidden_word1.word)
    assert_equal("***** ** *******", @hidden_word1.display)
  end

  def test_letter_in_word?
    assert_equal(true, @hidden_word1.letter_in_word?("e"))
    assert_equal(false, @hidden_word1.letter_in_word?("x"))
  end

  def test_reveal_letter__e
    @hidden_word1.reveal_letter("e")
    assert_equal("**ee* ** ******e",
       @hidden_word1.display)
  end

  def test_reveal_letter__e_then_x
    @hidden_word1.reveal_letter("e")
    @hidden_word1.reveal_letter("x")
    assert_equal("**ee* ** ******e", @hidden_word1.display)
  end

  def test_reveal_letter__e_then_x_then_o_then_f
    @hidden_word1.reveal_letter("e")
    @hidden_word1.reveal_letter("x")
    @hidden_word1.reveal_letter("o")
    @hidden_word1.reveal_letter("f")
    assert_equal("**ee* of fo****e", @hidden_word1.display)
  end

end

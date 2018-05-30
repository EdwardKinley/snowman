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

end

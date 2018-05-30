require("minitest/autorun")
require_relative("../game.rb")
require_relative("../player.rb")
require_relative("../hidden_word.rb")

class GameTest < MiniTest::Test

  def setup
    @player1 = Player.new("Colby")
    @player2 = Player.new("Erin", 4)
    @hidden_word1 = HiddenWord.new("wheel of fortune")
    @game1 = Game.new(@player1, @hidden_word1)
  end

  def test_game_setup
    assert_equal(@player1, @game1.player)
    assert_equal("Erin", @player2.name)
    assert_equal(@hidden_word1, @game1.hidden_word)
    assert_equal([], @game1.guessed_letters)
  end

end

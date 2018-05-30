require("minitest/autorun")
require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup
    @player1 = Player.new("Colby")
    @player2 = Player.new("Erin", 4)
  end

  def test_player_setup
    assert_equal("Colby", @player1.name)
    assert_equal(6, @player1.lives)
    assert_equal("Erin", @player2.name)
    assert_equal(4, @player2.lives)
  end



end

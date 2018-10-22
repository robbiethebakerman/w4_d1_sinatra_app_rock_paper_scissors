require("minitest/autorun")
require("minitest/rg")
require_relative("../models/game")

class GameTest < MiniTest::Test

  def setup
    @game_1 = Game.new("rock", "scissors")
    @game_2 = Game.new("rock", "paper")
    @game_3 = Game.new("scissors", "rock")
    @game_4 = Game.new("scissors", "paper")
    @game_5 = Game.new("paper", "rock")
    @game_6 = Game.new("paper", "scissors")
  end

  def test_game_has_player_1
    assert_equal("rock", @game_1.player_1)
  end

  def test_game_has_player_2
    assert_equal("scissors", @game_1.player_2)
  end

  def test_declare_winner__rock_scissors
    assert_equal("rock", @game_1.declare_winner)
  end

  def test_declare_winner__rock_paper
    assert_equal("paper", @game_2.declare_winner)
  end

  def test_declare_winner__scissors_rock
    assert_equal("rock", @game_3.declare_winner)
  end

  def test_declare_winner__scissors_paper
    assert_equal("scissors", @game_4.declare_winner)
  end

  def test_declare_winner__paper_rock
    assert_equal("paper", @game_5.declare_winner)
  end

  def test_declare_winner__paper_scissors
    assert_equal("scissors", @game_6.declare_winner)
  end

end

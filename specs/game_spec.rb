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
    @game_7 = Game.new("rock", "rock")
    @game_8 = Game.new("scissors", "scissors")
    @game_9 = Game.new("paper", "paper")
    @game_10 = Game.new("PAPIER", "STONE")
  end

  def test_game_has_player_1
    assert_equal("rock", @game_1.player_1)
  end

  def test_game_has_player_2
    assert_equal("scissors", @game_1.player_2)
  end

  def test_declare_winner__rock_scissors
    assert_equal("Congratulations!!! Player 1 wins with rock!", @game_1.declare_winner())
  end

  def test_declare_winner__rock_paper
    assert_equal("Congratulations!!! Player 2 wins with paper!", @game_2.declare_winner())
  end

  def test_declare_winner__scissors_rock
    assert_equal("Congratulations!!! Player 2 wins with rock!", @game_3.declare_winner())
  end

  def test_declare_winner__scissors_paper
    assert_equal("Congratulations!!! Player 1 wins with scissors!", @game_4.declare_winner())
  end

  def test_declare_winner__paper_rock
    assert_equal("Congratulations!!! Player 1 wins with paper!", @game_5.declare_winner())
  end

  def test_declare_winner__paper_scissors
    assert_equal("Congratulations!!! Player 2 wins with scissors!", @game_6.declare_winner())
  end

  def test_declare_winner_draw__rock
    assert_equal("Well that's an anti-climax: it was a bore-draw!", @game_7.declare_winner())
  end

  def test_declare_winner_draw__scissors
    assert_equal("Well that's an anti-climax: it was a bore-draw!", @game_8.declare_winner())
  end

  def test_declare_winner_draw__paper
    assert_equal("Well that's an anti-climax: it was a bore-draw!", @game_9.declare_winner())
  end

  def test_error_message
    assert_equal("Looks like you made a boo-boo!!! Invalid player moves have been selected. Each player must play either 'rock', 'paper' or 'scissors'.", @game_10.declare_winner)
  end

end

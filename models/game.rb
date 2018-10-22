class Game

# since get request returns a hash - params,
# can probably refactor to make Game.new to take in a hash as the only argument

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def declare_winner()
    if @player_1 == "rock" && @player_2 == "scissors"
      "Congratulations!!! Player 1 wins with rock!"
    elsif @player_1 == "rock" && @player_2 == "paper"
      "Congratulations!!! Player 2 wins with paper!"
    elsif @player_1 == "scissors" && @player_2 == "rock"
      "Congratulations!!! Player 2 wins with rock!"
    elsif @player_1 == "scissors" && @player_2 == "paper"
      "Congratulations!!! Player 1 wins with scissors!"
    elsif @player_1 == "paper" && @player_2 == "rock"
      "Congratulations!!! Player 1 wins with paper!"
    elsif @player_1 == "paper" && @player_2 == "scissors"
      "Congratulations!!! Player 2 wins with scissors!"
    elsif @player_1 == "rock" && @player_2 == "rock"
      "Well that's an anti-climax: it was a bore-draw!"
    elsif @player_1 == "scissors" && @player_2 == "scissors"
      "Well that's an anti-climax: it was a bore-draw!"
    elsif @player_1 == "paper" && @player_2 == "paper"
      "Well that's an anti-climax: it was a bore-draw!"
    else
      "Looks like you made a boo-boo!!! Invalid player moves have been selected. Each player must play either 'rock', 'paper' or 'scissors'."
    end
  end

end

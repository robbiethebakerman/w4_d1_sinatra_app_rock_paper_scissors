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
      "rock"
    elsif @player_1 == "rock" && @player_2 == "paper"
      "paper"
    elsif @player_1 == "scissors" && @player_2 == "rock"
      "rock"
    elsif @player_1 == "scissors" && @player_2 == "paper"
      "scissors"
    elsif @player_1 == "paper" && @player_2 == "rock"
      "paper"
    elsif @player_1 == "paper" && @player_2 == "scissors"
      "scissors"
    # add draw results
    # else
    #   return "Invalid player moves have been selected. Each player must play either 'rock', 'paper' or 'scissors'."
    end
  end

end

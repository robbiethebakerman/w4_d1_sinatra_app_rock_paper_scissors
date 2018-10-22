class Game

# since get request returns a hash - params,
# can probably refactor to make Game.new to take in a hash as the only argument

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def declare_winner
    
  end

end

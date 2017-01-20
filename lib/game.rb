class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
    @opponent = player_2
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def attacks(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn, @opponent = @opponent, @current_turn
  end
end

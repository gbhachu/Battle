require 'game'

describe Game do
  subject(:game) {described_class.new}
  let (:player_1) { double :player, attack: nil }
  let (:player_2) { double :player, receive_damage: nil }

  it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attacks(player_2)

  end
end

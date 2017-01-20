require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let (:player_1) { double :player, attack: nil }
  let (:player_2) { double :player, receive_damage: nil }

  it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attacks(player_2)
  end

    describe '#current_turn' do
      it 'starts as player 1' do
        expect(game.current_turn).to eq player_1
      end
    end

    describe '#switch_turns' do
      it 'switches the turn' do
        game.switch_turns
        expect(game.current_turn).to eq player_2
        end
      end
end

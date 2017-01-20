require 'spec_helper'

feature 'Game over' do
  scenario 'when Player 1 reaches 0 HP first' do

      sign_in_and_play
      18.times do
        attack_and_confirm
      end
      click_link 'Attack'
      expect(page).to have_content 'GAME OVER!!!'

  end
end

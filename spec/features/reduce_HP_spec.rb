require 'spec_helper'

feature 'reduce player 2 HP by 10' do
  scenario 'attack reduces player 2 hit points' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Jock hit points: 90')
  end
end

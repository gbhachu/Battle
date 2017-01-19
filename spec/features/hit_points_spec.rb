require 'spec_helper'

feature 'Hit Points' do
  scenario 'see player_2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jock hit points: 50'
  end
end

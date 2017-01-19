require 'spec_helper'

feature 'Hit Points' do
  scenario 'see player_2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Hamish'
    fill_in :player_2_name, with: 'Jock'
    click_button 'Submit'
    expect(page).to have_content 'Jock hit points: 50'
  end
end

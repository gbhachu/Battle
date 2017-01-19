require_relative 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Hamish'
    fill_in :player_2_name, with: 'Jock'
    click_button 'Submit'
    expect(page).to have_content 'Hamish vs. Jock'
  end
end

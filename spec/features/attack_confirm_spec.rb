require 'spec_helper'

feature 'Attack Player' do
  scenario 'attacking other player and confirm', js: true do  
    sign_in_and_play
    click_button 'Attack'
    expect(page.accept_alert)
  end
end

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Hamish'
  fill_in :player_2_name, with: 'Jock'
  click_button 'Submit'
end

def attack_and_confirm
  click_link 'Attack'
  click_link 'OK'
end

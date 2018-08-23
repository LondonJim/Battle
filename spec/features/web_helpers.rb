def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Jake the Dog"
  fill_in :player_2_name, with: "Ice King"
  click_button 'Submit'
end

def attack_and_next
  click_button('ATTACK')
  click_button('NEXT')
end

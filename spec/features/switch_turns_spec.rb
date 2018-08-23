feature 'Switching Turns' do

  scenario 'start of the game' do
    sign_in_and_play
    expect(page).to have_content "Jake the Dog's turn"
  end

  scenario 'after first player attacks' do
    sign_in_and_play
    attack_and_next
    expect(page).not_to have_content "Jake the Dog's turn"
    expect(page).to have_content "Ice King's turn"
  end
end

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Finn the Human'
    fill_in :player_2_name, with: 'The Lich'
    click_button 'Submit'
    expect(page).to have_content 'The Lich: 100HP'
  end
end

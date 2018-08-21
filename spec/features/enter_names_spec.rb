feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Jake the Dog'
    fill_in :player_2_name, with: 'Ice King'
    click_button('Submit')
    expect(page).to have_content 'Jake the Dog vs. Ice King'
  end
end

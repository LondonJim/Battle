feature 'Testing infrastructre' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructre working!'
  end
end

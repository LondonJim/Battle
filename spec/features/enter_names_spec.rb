feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play # web_helpers.rb method
    expect(page).to have_content 'Jake the Dog vs. Ice King'
  end
end

feature 'Game Over' do
  context 'when Player 1 reaches 0 HP' do
    
    before do
      sign_in_and_play
      attack_and_next
      allow(Kernel).to receive(:rand).and_return(100)
    end

    scenario 'Player 1 loses' do
      click_button('ATTACK')
      expect(page).to have_content 'Jake the Dog defeated!'
    end
  end
end

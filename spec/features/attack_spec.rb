feature 'Attacking' do

  before do
    allow(Kernel).to receive(:rand).and_return(10)
    @game = Game.instance
  end

  scenario 'attack player 2' do
    sign_in_and_play
    click_button('ATTACK')
    expect(page).to have_content 'Jake the Dog attacked Ice King'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    attack_and_next
    expect(page).not_to have_content "Ice King: 100HP"
    expect(page).to have_content "Ice King: 90HP"
  end

  scenario 'attacked by Player 2' do
    sign_in_and_play
    attack_and_next
    click_button('ATTACK')
    expect(page).to have_content 'Ice King attacked Jake the Dog'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    attack_and_next
    attack_and_next
    expect(page).not_to have_content 'Jake the Dog: 100HP'
    expect(page).to have_content 'Jake the Dog: 90HP'
  end


end

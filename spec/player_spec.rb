require 'player'

describe Player do
  subject(:jake_the_dog) { Player.new('Jake the Dog') }
  subject(:ice_king) { Player.new('Ice King')}

  describe '#name' do
    it 'returns the name' do
      expect(jake_the_dog.name).to eq 'Jake the Dog'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(jake_the_dog.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(ice_king).to receive(:receive_damage)
      jake_the_dog.attack(ice_king)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { jake_the_dog.receive_damage }.to change { jake_the_dog.hit_points }.by(-10)
    end
  end
end

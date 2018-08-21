require 'player'

describe Player do
  subject(:finn) { Player.new('Finn') }

  describe '#name' do
    it 'returns the name' do
      expect(finn.name).to eq 'Finn'
    end
  end
end

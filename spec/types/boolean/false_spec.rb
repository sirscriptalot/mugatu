describe 'FalseClass' do
  describe '#to_b' do
    it 'returns false' do
      refute false.to_b
    end
  end
end

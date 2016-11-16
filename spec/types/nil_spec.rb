describe 'NilClass' do
  describe '#to_b' do
    it 'returns false' do
      refute nil.to_b
    end
  end
end

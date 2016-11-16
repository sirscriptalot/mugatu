describe 'Boolean' do
  describe '#self.cast' do
    it 'casts value to a Boolean' do
      assert Hash.cast([[:foo, :bar]]) == {foo: :bar}
      assert Hash.cast({foo: :bar})    == {foo: :bar}
    end
  end

  context 'to_h is not implemented' do
    it 'raises a TypeError' do
      assert_raises(TypeError) { assert Hash.cast('hash') }
      assert_raises(TypeError) { assert Hash.cast(1) }
      assert_raises(TypeError) { assert Hash.cast(1.0) }
      assert_raises(TypeError) { assert Hash.cast(true) }
      assert_raises(TypeError) { assert Hash.cast(false) }
    end
  end
end

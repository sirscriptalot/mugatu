describe 'Array' do
  describe '#self.cast' do
    it 'casts value to Array' do
      assert Array.cast([])          == []
      assert Array.cast({foo: :bar}) == [[:foo, :bar]]
    end
  end

  context 'to_a is not implemented' do
    it 'raises a TypeError' do
      assert_raises(TypeError) { assert Array.cast('array') }
      assert_raises(TypeError) { assert Array.cast(1) }
      assert_raises(TypeError) { assert Array.cast(1.0) }
      assert_raises(TypeError) { assert Array.cast(true) }
      assert_raises(TypeError) { assert Array.cast(false) }
    end
  end
end

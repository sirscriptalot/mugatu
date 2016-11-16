describe 'Integer' do
  describe '#self.cast' do
    it 'casts value to Integer' do
      assert Integer.cast('one') == 0
      assert Integer.cast('1')   == 1
      assert Integer.cast(1)     == 1
      assert Integer.cast(1.0)   == 1
      assert Integer.cast(nil)   == 0
    end

    context 'to_i is not implemented' do
      it 'raises a TypeError' do
        assert_raises(TypeError) { assert Integer.cast([]) }
        assert_raises(TypeError) { assert Integer.cast({}) }
        assert_raises(TypeError) { assert Integer.cast(true) }
        assert_raises(TypeError) { assert Integer.cast(false) }
      end
    end
  end

  describe '#to_b' do
    it 'casts value to Boolean' do
      refute 0.to_b
      assert 1.to_b
      assert 2.to_b
    end
  end
end

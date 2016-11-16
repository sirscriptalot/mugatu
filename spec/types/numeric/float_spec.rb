describe 'Float' do
  describe '#self.cast' do
    it 'casts value to Float' do
      assert Float.cast('one') == 0.0
      assert Float.cast('1')   == 1.0
      assert Float.cast(1)     == 1.0
      assert Float.cast(1.0)   == 1.0
      assert Float.cast(nil)   == 0.0
    end

    context 'to_f is not implemented' do
      it 'raises a TypeError' do
        assert_raises(TypeError) { assert Float.cast([]) }
        assert_raises(TypeError) { assert Float.cast({}) }
        assert_raises(TypeError) { assert Float.cast(true) }
        assert_raises(TypeError) { assert Float.cast(false) }
      end
    end
  end

  describe '#to_b' do
    it 'casts value to Boolean' do
      refute 0.0.to_b
      assert 0.1.to_b
      assert 1.1.to_b
    end
  end
end

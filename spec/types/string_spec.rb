describe 'String' do
  describe '#self.cast' do
    it 'casts value to String' do
      assert String.cast('one') == 'one'
      assert String.cast(1)     == '1'
      assert String.cast(1.0)   == '1.0'
      assert String.cast([])    == '[]'
      assert String.cast({})    == '{}'
      assert String.cast(true)  == 'true'
      assert String.cast(false) == 'false'
      assert String.cast(nil)   == ''
    end
  end

  describe '#to_b' do
    context 'value is truthy' do
      it 'returns true' do
        ['t', 'T', 'true', 'TRUE', 'on', 'ON', 'y', 'Y', 'yes', 'YES', '1'].each do |value|
          assert value.to_b
        end
      end
    end

    context 'value is falsy' do
      it 'returns false' do
        ['f', 'F', 'false', 'FALSE', 'off', 'OFF', 'n', 'N', 'no', 'NO', '0'].each do |value|
          refute value.to_b
        end
      end
    end

    context 'value is not a truthy or falsy' do
      it 'raises TypeError' do
        assert_raises TypeError do
          'foo'.to_b
        end
      end
    end
  end
end

require_relative './spec_helper'

class Entity < Mugatu::Entity
  attribute :foo, String, default_value: 'bar'
end

describe 'Mugatu::Entity' do
  before do
    @entity = Entity.new
  end

  describe '#self.attributes' do
    context 'no attributes set' do
      it 'initializes as an empty array' do
        assert Mugatu::Entity.attributes.empty?
      end
    end

    context 'attributes set' do
      it 'returns the @attributes array' do
        refute Entity.attributes.empty?
      end
    end
  end

  describe '#self.attribute' do
    it 'defines a reader method for attribute.key' do
      assert @entity.respond_to?(:foo)
    end

    it 'defines a writer method for attribute.key' do
      assert @entity.respond_to?(:foo=)
    end
  end

  describe '#initialize' do
    it 'sets default values' do
      assert @entity.foo = 'bar'
    end
  end

  describe '#attributes' do
    it 'returns the class\' @attributes' do
      assert @entity.attributes == @entity.class.attributes
    end
  end
end

describe 'Mugatu::Attribute' do
  before do
    @key           = :foo
    @default_value = 'bar'
    @attribute     = Mugatu::Attribute.new(@key, String, default_value: @default_value)
  end

  describe '#initialize' do
    describe 'options[:default_value]' do
      it 'sets initial @value' do
        assert @attribute.value == @default_value
      end
    end
  end

  describe '#value=' do
    it 'allows nil values' do
      @attribute.value = nil

      assert @attribute.value.nil?
    end
  end
end

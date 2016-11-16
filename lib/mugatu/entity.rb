module Mugatu
  class Entity
    def self.attribute(key, type, options = {})
      attribute = Attribute.new(key, type, options)

      define_attribute_reader(attribute)
      define_attribute_writer(attribute)

      attributes << attribute
    end

    def self.attributes
      @attributes ||= []
    end

    def initialize(attributes = {})
      self.attributes.each do |a|
        send("#{a.key}=", attributes[a.key]) if attributes.key?(a.key)
      end
    end

    def attributes
      self.class.attributes
    end

    private

    def self.define_attribute_reader(attribute)
      define_method attribute.key do
        attribute.value
      end
    end

    def self.define_attribute_writer(attribute)
      define_method "#{attribute.key}=" do |value|
        attribute.value = value
      end
    end
  end
end

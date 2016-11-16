module Mugatu
  class Attribute
    attr_reader :key, :type, :value

    def initialize(key, type, options = {})
      @key       = key
      @type      = type
      self.value = options[:default_value] # nil when none is set.
    end

    def value=(new_value)
      @value = cast(new_value)
    end

    private

    def cast(value)
      if value.is_a?(type) || value.nil?
        value
      else
        type.cast(value)
      end
    end
  end
end

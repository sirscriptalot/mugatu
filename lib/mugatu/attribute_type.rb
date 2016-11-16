module Mugatu
  module AttributeType
    def set_cast_with(sym)
      @cast_with = sym
    end

    def get_cast_with
      @cast_with
    end

    def cast(value)
      if value.respond_to?(get_cast_with)
        value.send(get_cast_with)
      else
        raise_cast_error(value)
      end
    end

    def raise_cast_error(value)
      raise TypeError, "cannot cast #{value} into #{name} (TypeError)"
    end
  end
end

Dir[File.dirname(__FILE__) + '/types/**/*.rb'].each {|file| require file }

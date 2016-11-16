class String
  extend Mugatu::AttributeType

  TRUTHY = ['t', 'true', 'on', 'y', 'yes', '1'].freeze
  FALSY  = ['f', 'false', 'off', 'n', 'no', '0'].freeze

  set_cast_with :to_s

  def to_b
    value = downcase

    return true  if TRUTHY.include?(value)
    return false if FALSY.include?(value)

    self.class.raise_cast_error(self)
  end
end

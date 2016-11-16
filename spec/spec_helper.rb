require          'minitest/autorun'
require_relative '../lib/mugatu'

def context(*args, &block)
  describe(*args, &block)
end

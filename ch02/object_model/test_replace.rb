require 'test/unit'
require './replace'

class ReplaceTest < Test::Unit::TestCase
  def test_replace
    original = ['one', 'two', 'one', 'three']
    replaced = original.substitute('one', 'zero')
    assert_equal ['zero', 'two', 'zero', 'three'], replaced
  end
end
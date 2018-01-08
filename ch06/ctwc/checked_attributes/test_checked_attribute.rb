require 'test/unit'
# require_relative 'eval'
# require_relative 'no_eval'
# require_relative 'block'
# require_relative 'macro'
require_relative 'module'

class Person
  # For module.rb
  include CheckedAttributes

  # For macro.rb, module.rb
  attr_checked :age do |v|
    v >= 18
  end
end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    # For eval.rb, no_eval.rb, block.rb
    # add_checked_attribute(Person, :age) {|v| v >= 18 }
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  # For eval.rb, no_eval.rb

  # def test_refuses_nil_values
  #   assert_raises RuntimeError, 'Invalid attribute' do
  #     @bob.age = nil
  #   end
  # end

  # def test_refuses_false_values
  #   assert_raises RuntimeError, 'Invalid attribute' do
  #     @bob.age = false
  #   end
  # end

  def test_refuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end
end
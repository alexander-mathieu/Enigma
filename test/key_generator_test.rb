require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < MiniTest::Test

  def setup
    @key_generator = KeyGenerator.new
  end

  def test_it_exists
    assert_instance_of KeyGenerator, @key_generator
  end

  def test_it_has_a_random_key
    assert_includes 0..99999, @key_generator.key
  end

  def test_the_key_is_5_digits
    assert_equal 5, @key_generator.key.digits.length
  end

end

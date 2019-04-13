require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < MiniTest::Test

  def setup
    @key_generator = KeyGenerator.new
  end

  def test_it_exists
    assert_instance_of KeyGenerator, @key_generator
  end

  def test_by_default_it_generates_an_array_of_5_numbers
    assert_instance_of String, @key_generator.key

    assert_equal 5, @key_generator.key.length
  end
  
end

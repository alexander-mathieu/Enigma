require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < MiniTest::Test

  def setup
    @key_generator = KeyGenerator.new
  end

  def test_it_exists
    assert_instance_of KeyGenerator, @key_generator
  end

  def test_it_generates_an_array_of_5_numbers
    assert_equal 5, @key_generator.key_array.length
  end

  def test_it_can_combine_array_into_a_key
    assert_includes 50000..99999, @key_generator.key
  end

  def test_the_key_is_5_digits
    assert_equal 5, @key_generator.key.digits.length
  end

  def test_it_can_split_key_into_a_hash_with_4_sets_of_2_digits
    assert_includes 0..99, @key_generator.key_assignment["A"]
    assert_includes 0..99, @key_generator.key_assignment["B"]
    assert_includes 0..99, @key_generator.key_assignment["C"]
    assert_includes 0..99, @key_generator.key_assignment["D"]
  end

end

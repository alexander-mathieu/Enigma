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
    assert_equal 5, @key_generator.key.length
  end

   def test_it_can_join_array_into_a_key_with_5_digits
     assert_equal 5, @key_generator.key_array.length
   end

  def test_it_can_split_key_into_a_hash_with_4_sets_of_2_digits
    assert_equal 2, @key_generator.key_assignment["A"].length
    assert_equal 2, @key_generator.key_assignment["B"].length
    assert_equal 2, @key_generator.key_assignment["C"].length
    assert_equal 2, @key_generator.key_assignment["D"].length
  end

end

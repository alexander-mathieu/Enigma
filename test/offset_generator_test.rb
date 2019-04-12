require './test/test_helper'
require './lib/offset_generator'

class OffsetGeneratorTest < MiniTest::Test

  def setup
    @offset_generator = OffsetGenerator.new("041219")
  end

  def test_it_exists
    assert_instance_of OffsetGenerator, @offset_generator
  end

  def test_by_default_it_has_a_date
    assert_equal "041219", @offset_generator.date
  end

  def test_it_can_turn_the_date_into_an_integer
    assert_equal 41219, @offset_generator.date_to_integer
  end

  def test_it_can_square_the_date
    assert_equal 1699005961, @offset_generator.square_date
  end

  def test_it_can_stringify_the_squared_date
    assert_equal "1699005961", @offset_generator.stringify
  end

  def test_it_can_return_the_last_four_digits_of_date_as_array
    assert_equal [5, 9, 6, 1], @offset_generator.last_four_digits
  end

  def test_it_can_assign_an_offset
    expected = {"A" => 5,
                "B" => 9,
                "C" => 6,
                "D" => 1}

    assert_equal expected, @offset_generator.offset_assignment
  end

end

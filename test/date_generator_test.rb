require './test/test_helper'
require './lib/date_generator'

class DateGeneratorTest < MiniTest::Test

  def setup
    @date_generator = DateGenerator.new
  end

  def test_it_exists
    assert_instance_of DateGenerator, @date_generator
  end

  def test_by_default_it_has_a_date
    assert_equal "041319", @date_generator.date
  end

  def test_it_can_turn_the_date_into_an_integer
    assert_equal 41319, @date_generator.date_to_integer
  end

  def test_it_can_square_the_date
    assert_equal 1707259761, @date_generator.square_date
  end

  def test_it_can_stringify_the_squared_date
    assert_equal "1707259761", @date_generator.stringify
  end

  def test_it_can_return_the_last_four_digits_of_date_as_offset
    assert_equal "9761", @date_generator.offset
  end

end

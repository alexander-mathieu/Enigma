require './test/test_helper.rb'
require './lib/offset_calculator'

class OffsetCalculatorTest < MiniTest::Test

  def setup
    @offset_calculator = OffsetCalculator.new("041319")
  end

  def test_it_exists
    assert_instance_of OffsetCalculator, @offset_calculator
  end

  def test_it_has_a_date
    assert_equal "041319", @offset_calculator.date
  end

  def test_it_can_turn_date_into_an_integer
    assert_equal 41319, @offset_calculator.date_to_integer
  end

  def test_it_can_square_integer_date
    assert_equal 1707259761, @offset_calculator.square_date
  end

  def test_it_can_stringify_the_squared_date
    assert_equal "1707259761", @offset_calculator.stringify
  end

  def test_it_can_return_an_offset
    assert_equal "9761", @offset_calculator.offset
  end

end

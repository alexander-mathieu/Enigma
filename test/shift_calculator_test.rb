require './test/test_helper'
require './lib/shift_calculator'

class ShiftCalculatorTest < MiniTest::Test

  def setup
    @shift_calculator = ShiftCalculator.new("51244", "9761")
  end

  def test_it_exists
    assert_instance_of ShiftCalculator, @shift_calculator
  end

  def test_it_has_a_key
    assert_equal "51244", @shift_calculator.key
  end

  def test_it_has_an_offset
    assert_equal "9761", @shift_calculator.offset
  end


end

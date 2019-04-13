require './test/test_helper'
require './lib/shift_calculator'

class ShiftCalculatorTest < MiniTest::Test

  def setup
    @shift_calculator = ShiftCalculator.new("51244", "041319")
  end

  def test_it_exists
    assert_instance_of ShiftCalculator, @shift_calculator
  end



end

require './test/test_helper'
require './lib/shift_calculator'

class ShiftCalculatorTest < MiniTest::Test

  def setup
    @shift_calculator = ShiftCalculator.new
    @key    = "51244"
    @offset = "9761"
  end

  def test_it_exists
    assert_instance_of ShiftCalculator, @shift_calculator
  end

  def test_it_can_calculate_total_shift_values
    expected = {"A" => 60,
                "B" => 19,
                "C" => 30,
                "D" => 45}

    assert_equal expected, @shift_calculator.total_shift(@key, @offset)
  end

end

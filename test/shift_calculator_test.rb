require './test/test_helper'
require './lib/shift_calculator'

class ShiftCalculatorTest < MiniTest::Test

  def setup
    @shift_calculator = ShiftCalculator.new
    @key    = "51244"
    @offset = "9761"

    @key_shift    = {"A" => 51,
                     "B" => 12,
                     "C" => 24,
                     "D" => 44}

    @offset_shift = {"A" => 9,
                     "B" => 7,
                     "C" => 6,
                     "D" => 1}
  end

  def test_it_exists
    assert_instance_of ShiftCalculator, @shift_calculator
  end

  def test_it_can_assign_keys_to_values
    expected = {"A" => 51,
                "B" => 12,
                "C" => 24,
                "D" => 44}

    assert_equal expected, @shift_calculator.key_shift(@key)
  end

  def test_it_can_assign_offset_to_values
    expected = {"A" => 9,
                "B" => 7,
                "C" => 6,
                "D" => 1}

    assert_equal expected, @shift_calculator.offset_shift(@offset)
  end

  def test_it_can_calculate_total_shift_values
    expected = {"A" => 60,
                "B" => 19,
                "C" => 30,
                "D" => 45}

    assert_equal expected, @shift_calculator.total_shift(@key_shift, @offset_shift)
  end

end

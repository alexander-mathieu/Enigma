require './test/test_helper'
require './lib/offset_generator'

class OffsetGeneratorTest < MiniTest::Test

  def setup
    @offset_generator = OffsetGenerator.new
  end

  def test_it_exists
    assert_instance_of OffsetGenerator, @offset_generator
  end

  def test_by_default_it_has_a_date
    assert_equal "041219", @offset_generator.date
  end

end

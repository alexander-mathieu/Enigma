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

end

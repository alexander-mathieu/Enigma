require './test/test_helper.rb'
require './lib/offsetter'

class OffsetterTest < MiniTest::Test

  def setup
    @offsetter = Offsetter.new("041319")
  end

  def test_it_exists
    assert_instance_of Offsetter, @offsetter
  end

  def test_it_has_a_date
    assert_equal "041319", @offsetter.date
  end

  def test_it_can_turn_date_into_an_integer
    assert_equal 41319, @offsetter.date_to_integer
  end

end

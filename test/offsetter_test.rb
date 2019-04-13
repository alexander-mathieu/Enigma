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

end

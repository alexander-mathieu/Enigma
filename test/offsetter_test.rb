require './test/test_helper.rb'
require './lib/offsetter'

class OffsetterTest < MiniTest::Test

  def setup
    @offsetter = Offsetter.new("041319")
  end

end

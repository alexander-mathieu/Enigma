require './test/test_helper'
require './lib/key_generator'
require './lib/offset_generator'
require './lib/caesar_cipher'
require './lib/enigma'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma = Enigma.new("Balloons")
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

end

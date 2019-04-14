require './test/test_helper'
require './lib/shift_calculator'
require './lib/caesar_cipher'
require './lib/offsettable'
require './lib/keyable'
require './lib/datable'
require './lib/enigma'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma = Enigma.new("Balloons")
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_a_message
    assert_equal "Balloons", @enigma.message
  end

  def test_by_default_it_generates_a_5_digit_key
    assert_instance_of String, @enigma.key

    assert_equal 5, @enigma.key.length
  end

  def test_by_default_it_generates_a_6_digit_date
    assert_instance_of String, @enigma.date

    assert_equal 6, @enigma.date.length
  end

  def test_it_has_an_offset
    assert_equal "9761", @enigma.offset
  end

end

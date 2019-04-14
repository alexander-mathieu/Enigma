require './test/test_helper'
require './lib/shift_calculator'
require './lib/caesar_cipher'
require './lib/offsettable'
require './lib/keyable'
require './lib/datable'
require './lib/enigma'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_access_to_a_cipher
    assert_instance_of CaesarCipher, @enigma.cipher
  end

  def test_it_has_access_to_a_shift_calculator
    assert_instance_of ShiftCalculator, @enigma.shifter
  end

  def test_it_can_generate_a_default_5_digit_key
    assert_instance_of String, @enigma.default_key

    assert_equal 5, @enigma.default_key.length
  end

  def test_it_can_generate_a_default_6_digit_date
    assert_instance_of String, @enigma.default_date

    assert_equal 6, @enigma.default_date.length
  end

  def test_it_can_calculate_offset
    assert_equal "3561", @enigma.offset
  end

  def test_it_can_encrypt_characters
    assert_equal "tqxx letqcq", @enigma.encrypt("hello there", 12)
  end

end

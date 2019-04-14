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
    @enigma.stubs(date: "041419")

    assert_equal "3561", @enigma.offset
  end

  def test_it_has_a_total_shift
    @enigma.stubs(key: "12424", date: "041419")

    expected = {"A" => 15,
                "B" => 29,
                "C" => 48,
                "D" => 25}

    assert_equal expected, @enigma.total_shift
  end

  def test_it_can_encode_all_letters
    @enigma.stubs(key: "12424", date: "041419")

    assert_equal "agmqpiz", @enigma.encode_all_letters("message")
  end

  def test_it_can_decode_all_letters
    @enigma.stubs(key: "12424", date: "041419")

    assert_equal "message", @enigma.decode_all_letters("agmqpiz")
  end

  def test_it_can_encrypt_a_message
    expected = {:encryption => "agmqpiz",
                :key        => "12424",
                :date       => "041419"}

    assert_equal expected, @enigma.encrypt("message")
  end

end

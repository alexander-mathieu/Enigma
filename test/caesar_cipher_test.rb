require './test/test_helper'
require './lib/caesar_cipher'

class CaesarCipherTest < MiniTest::Test

  def setup
    @caesar_cipher = CaesarCipher.new("a", "4")
  end

  def test_it_exists
    assert_instance_of CaesarCipher, @caesar_cipher
  end

  def test_it_has_a_letter
    assert_equal "a", @caesar_cipher.letter
  end

  def test_it_has_a_shift_value
    assert_equal 4, @caesar_cipher.shift_value
  end

  def test_it_has_an_alphabet
    expected = ["a", "b", "c", "d",
                "e", "f", "g", "h",
                "i", "j", "k", "l",
                "m", "n", "o", "p",
                "q", "r", "s", "t",
                "u", "v", "w", "x",
                "y", "z", " "]

    assert_equal expected, @caesar_cipher.alphabet
  end

  def test_it_can_encode_letter_using_shift_value
    assert_equal "e", @caesar_cipher.encode
  end

end

require './test/test_helper'
require './lib/caesar_cipher'

class CaesarCipherTest < MiniTest::Test

  def setup
    @caesar_cipher = CaesarCipher.new
  end

  def test_it_exists
    assert_instance_of CaesarCipher, @caesar_cipher
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
    assert_equal "e", @caesar_cipher.encode("a", "4")
  end

  def test_it_returns_characters_not_included_in_alphabet
    assert_equal "/", @caesar_cipher.encode("/", "4")
  end

end

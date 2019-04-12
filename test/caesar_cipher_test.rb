require './test/test_helper'
require './lib/caesar_cipher'

class CaesarCipherTest < MiniTest::Test

  def setup
    @caesar_cipher = CaesarCipher.new
  end

  def test_it_exists
    assert_instance_of CaesarCipher, @caesar_cipher
  end

end

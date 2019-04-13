class CaesarCipher
  attr_reader :letter,
              :shift_value,
              :alphabet

  def initialize(letter, shift_value)
    @letter      = letter
    @shift_value = shift_value.to_i
    @alphabet    = ('a'..'z').to_a << " "
  end

  def encode
    @alphabet.rotate(@shift_value).first
  end

end

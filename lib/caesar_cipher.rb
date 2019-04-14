class CaesarCipher
  attr_reader :alphabet

  def initialize
    @alphabet  = ('a'..'z').to_a << " "
  end

  def encode(character, shift_value)
    if @alphabet.include?(character)
      Hash[@alphabet.zip(@alphabet.rotate(shift_value))][character]
    else
      return character
    end
  end

  def decode(character, shift_value)
    if @alphabet.include?(character)
      Hash[@alphabet.zip(@alphabet.rotate(-shift_value))][character]
    else
      return character
    end
  end

end

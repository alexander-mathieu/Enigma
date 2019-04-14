class CaesarCipher
  attr_reader :alphabet

  def initialize
    @alphabet  = ('a'..'z').to_a << " "
  end

  def encode(character, shift_value)
    if @alphabet.include?(character)
      new_value = Hash[@alphabet.zip(@alphabet.rotate(shift_value))]
    else
      return character
    end
    new_value[character]
  end

  def decode(character, shift_value)
    if @alphabet.include?(character)
      new_value = Hash[@alphabet.zip(@alphabet.rotate(-shift_value))]
    else
      return character
    end
    new_value[character]
  end

end

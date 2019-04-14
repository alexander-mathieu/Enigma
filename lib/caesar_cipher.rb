class CaesarCipher
  attr_reader :alphabet

  def initialize
    @alphabet    = ('a'..'z').to_a << " "
  end

  def encode(character, shift_value)
    if @alphabet.include?(character)
      @alphabet.rotate(shift_value.to_i).first
    else
      character
    end
  end

end

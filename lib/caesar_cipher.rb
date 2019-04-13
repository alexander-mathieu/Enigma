class CaesarCipher
  attr_reader :character,
              :shift_value,
              :alphabet

  def initialize(character, shift_value)
    @character   = character
    @shift_value = shift_value.to_i
    @alphabet    = ('a'..'z').to_a << " "
  end

  def encode
    if @alphabet.include?(@character)
      @alphabet.rotate(@shift_value).first
    else
      @character
    end
  end

end

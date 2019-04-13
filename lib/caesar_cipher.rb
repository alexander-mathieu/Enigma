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
    if @alphabet.include?(@letter)
      @alphabet.rotate(@shift_value).first
    else
      @letter
    end
  end

end

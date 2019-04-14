require './lib/shift_calculator'
require './lib/caesar_cipher'
require './lib/offsettable'
require './lib/keyable'
require './lib/datable'

class Enigma
  include Offsettable, Keyable, Datable

  attr_reader :cipher,
              :shifter

  def initialize
    @cipher  = CaesarCipher.new
    @shifter = ShiftCalculator.new
  end

  def default_key
    self.generate_key
  end

  def default_date
    self.generate_date
  end

  def encrypt(message, shift_value)
    character_array = message.downcase.split("")
    character_array.map do |character|
      @cipher.encode(character, shift_value)
    end.join
  end

end

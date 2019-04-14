require './lib/shift_calculator'
require './lib/caesar_cipher'
require './lib/offsettable'
require './lib/keyable'
require './lib/datable'

class Enigma
  include Offsettable, Keyable, Datable

  attr_reader :key,
              :date,
              :cipher,
              :shifter

  def initialize(key = default_key, date = default_date)
    @key     = key
    @date    = date
    @cipher  = CaesarCipher.new
    @shifter = ShiftCalculator.new
  end

  def default_key
    self.generate_key
  end

  def default_date
    self.generate_date
  end

end

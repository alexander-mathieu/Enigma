require './lib/shift_calculator'
require './lib/caesar_cipher'
require './lib/offsettable'
require './lib/keyable'
require './lib/datable'

class Enigma
  include Offsettable, Keyable, Datable

  attr_reader :key,
              :date,
              :offset,
              :cipher,
              :shifter

  def initialize
    @key     = nil
    @date    = nil
    @offset  = nil
    @cipher  = CaesarCipher.new
    @shifter = ShiftCalculator.new
  end

  def default_key
    self.generate_key
  end

  def default_date
    self.generate_date
  end

  def offset
    self.calculate_offset(@date)
  end

  def total_shift
    @shifter.total_shift(key, offset)
  end

end

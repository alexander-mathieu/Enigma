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
              :shifter,
              :new_message

  def initialize
    @key         = key
    @date        = date
    @cipher      = CaesarCipher.new
    @shifter     = ShiftCalculator.new
    @new_message = []
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

  def encrypt(message, key = default_key, date = default_date)
    @key = key; @date = date
    message.split("").each_slice(4) do |group|
      new_message << @cipher.encode(group[0], total_shift["A"]) if !group[0].nil?
      new_message << @cipher.encode(group[1], total_shift["B"]) if !group[1].nil?
      new_message << @cipher.encode(group[2], total_shift["C"]) if !group[2].nil?
      new_message << @cipher.encode(group[3], total_shift["D"]) if !group[3].nil?
    end
    new_message.join
  end

  def total_shift
    @shifter.total_shift(key, offset)
  end

end

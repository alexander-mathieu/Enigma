require './lib/shift_calculator'
require './lib/caesar_cipher'
require './lib/offsettable'
require './lib/keyable'
require './lib/datable'

class Enigma
  include Offsettable, Keyable, Datable

  attr_reader :message,
              :key,
              :date,
              :offset

  def initialize(message, key = default_key, date = default_date)
    @message = message
    @key     = key
    @date    = date
    @offset  = self.calculate_offset(date)
  end

  def default_key
    self.generate_key
  end

  def default_date
    self.generate_date
  end

end

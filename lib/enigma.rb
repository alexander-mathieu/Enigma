require './lib/offset_calculator'
require './lib/shift_calculator'
require './lib/caesar_cipher'
require './lib/keyable'
require './lib/datable'

class Enigma
  include Keyable, Datable

  attr_reader :message,
              :key,
              :date,
              :offset

  def initialize(message, key = default_key, date = default_date)
    @message = message
    @key     = key
    @date    = date
    @offset  = OffsetCalculator.new(date).offset
  end

  def default_key
    self.generate_key
  end

  def default_date
    self.generate_date
  end

end

require './lib/shift_calculator'
require './lib/date_generator'
require './lib/caesar_cipher'
require './lib/offsetter'
require './lib/keyable'

class Enigma
  include Keyable

  attr_reader :message,
              :key,
              :date,
              :offset

  def initialize(message, key = default_key, date = default_date)
    @message = message
    @key     = key
    @date    = date
    @offset  = Offsetter.new(date).offset
  end

  def default_key
    self.generate_key
  end

  def default_date
    DateGenerator.new.date
  end

end

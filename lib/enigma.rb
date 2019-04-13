require './lib/key_generator'
require './lib/offset_generator'
require './lib/caesar_cipher'
require './lib/assignable'

class Enigma
  include Assignable

  attr_reader :message,
              :key,
              :date

  def initialize(message, key = default_key, date = default_date)
    @message = message
    @key     = key
    @date    = date
  end

  def default_key
    KeyGenerator.new.key
  end

  def default_date
    OffsetGenerator.new.date
  end

end

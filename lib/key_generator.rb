require 'securerandom'

class KeyGenerator
  attr_reader :key

  def initialize
    @key = key
  end

  def key
    5.times.map {SecureRandom.random_number(9).to_s}.join
  end

end

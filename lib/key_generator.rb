require 'securerandom'

class KeyGenerator

  def initialize
    @key = key
  end

  def key
    5.times.map {SecureRandom.random_number(9)}.join.to_i
  end

end

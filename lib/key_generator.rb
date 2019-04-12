require 'securerandom'

class KeyGenerator

  def initialize
    @key = key
  end

  def key
    key_array.join.to_i
  end

  def key_array
    5.times.map {SecureRandom.random_number(9)}
  end

end

require 'securerandom'

class KeyGenerator
  attr_reader :key

  def initialize(key = default)
    @key            = key
    @key_assignment = key_assignment
  end

  def default
    5.times.map {SecureRandom.random_number(9).to_s}.join
  end

  def key_array
    @key.split("")
  end

  def key_assignment
    {"A" => key_array[0..1].join,
     "B" => key_array[1..2].join,
     "C" => key_array[2..3].join,
     "D" => key_array[3..4].join}
  end

end

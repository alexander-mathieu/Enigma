require 'securerandom'

class KeyGenerator

  def initialize
    @key            = key
    @key_assignment = key_assignment
  end

  def key
    key_array.join
  end

  def key_array
    5.times.map {SecureRandom.random_number(9).to_s}
  end

  def key_assignment
    {"A" => key_array[0..1].join,
     "B" => key_array[1..2].join,
     "C" => key_array[2..3].join,
     "D" => key_array[3..4].join}
  end

end

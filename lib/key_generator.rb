require 'securerandom'

class KeyGenerator

  def initialize
    @key            = key
    @key_assignment = key_assignment
  end

  def key
    key_array.join.to_i
  end

  def key_array
    5.times.map {SecureRandom.random_number(9)}
  end

  def key_assignment
    {"A" => key_array[0..1].join.to_i,
     "B" => key_array[1..2].join.to_i,
     "C" => key_array[2..3].join.to_i,
     "D" => key_array[3..4].join.to_i}
  end

end

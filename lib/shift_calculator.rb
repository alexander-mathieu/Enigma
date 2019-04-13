class ShiftCalculator
  attr_reader :key,
              :offset

  def initialize(key, offset)
    @key    = key
    @offset = offset
  end

  def key_assignment
    {"A" => @key[0..1].to_i,
     "B" => @key[1..2].to_i,
     "C" => @key[2..3].to_i,
     "D" => @key[3..4].to_i}
  end

  def offset_assignment
    {"A" => @offset[0].to_i,
     "B" => @offset[1].to_i,
     "C" => @offset[2].to_i,
     "D" => @offset[3].to_i}
  end

end
